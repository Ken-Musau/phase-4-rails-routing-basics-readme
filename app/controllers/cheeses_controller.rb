class CheesesController < ApplicationController
  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  def order
    cheeses = Cheese.all.order(price: :asc)
    render json: cheeses
  end
end
