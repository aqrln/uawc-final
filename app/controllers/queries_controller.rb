class QueriesController < ApplicationController

  def query_params
    params.require(:query).permit(:point_id, :lat, :lon, :type, :card_id, :checkin, :checkout)
  end

  def new
    @query = Query.new
  end

  def show
    @query = Query.find(params[:id])
    render xml: @query
  end

  def create
    @query = Query.new(query_params)
    @query.save
    redirect_to @query
  end

end
