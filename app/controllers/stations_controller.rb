class StationsController < ApplicationController

  def point_params
    params.require(:point).permit(:lat, :lon, :type)
  end

  def index
    @points = Point.all
  end

  def new
    @point = Point.new
  end

  def create
    @point = Point.new(point_params)
    @point.save
    redirect_to @point
  end

end
