class ControlCenterController < ApplicationController

  def index
    queries = Query.all

    @current_trips = Array.new

    queries.each do |element|
      if element.checkin == 1 and element.checkout == 0
        @current_trips << element
      end
    end
  end

  def show

  end

end
