class PointsController < ApplicationController

  def point_params
    params.require(:point).permit(:lat, :lon, :ttype)
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
    redirect_to points_path
  end

end
