class ReceiverController < ApplicationController

  def post
    if Point.exists?(params[:point_id])
      @point = Point.find(params[:point_id])
     if @point.lat == params[:coords][:lat].to_f && @point.lon == params[:coords][:lon].to_f && @point.ttype == params[:ttype].to_i
        @query = Query.new
        @query.point_id = @point.id
        @query.in_card_id = params[:checkin][:card_id]
        @query.out_card_id = params[:checkout][:card_id]
        @query.checkin = params[:checkin][:timestamp]
        @query.checkout = params[:checkout][:timestamp]
        @query.save
     end
    end
  end
end
