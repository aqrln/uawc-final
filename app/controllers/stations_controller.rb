class StationsController < ApplicationController

  def station_params
    params.require(:station).permit(:lat, :lon)
  end

  def index
    @stations = Station.all
  end

  def new
    @station = Station.new
  end

  def create
    @station = Station.new(station_params)
    @station.save
    redirect_to @station
  end

end
