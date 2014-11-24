class CardsController < ApplicationController

  def index
    @cards = Card.all
  end

  def card_params
    params.require(:card).permit(:from_point_id, :to_point_id)
  end

  def show
    @card = Card.find(params[:id])
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)
    @card.save
    redirect_to card_path(@card)
  end
end
