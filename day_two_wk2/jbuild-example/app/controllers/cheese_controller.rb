class CheeseController < ApplicationController
  def index
    @cheeses = Cheese.all
  end
end
