class ControlCenterController < ApplicationController

  def index
    queries = Query.all
    cards = Card.all

    @wrong_trips = Array.new

    queries.each do |query|
      cards.each do |card|
        if card.id == query.out_card_id and card.to_point_id != query.point_id
          @wrong_trips << query
        end
        if card.id == query.in_card_id and card.from_point_id != query.point_id
          @wrong_trips << query
        end
      end
    end

  end

  def show

  end

end
