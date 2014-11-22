class PointsController < ApplicationController

  def station_params
    params.require(:point).permit(:lat, :lon)
  end

  def index
    @points = Point.all
  end

  def new
    @point = Point.new
  end

  def create
    @point = Point.new(station_params)
    @point.save
    redirect_to @point
  end

end
