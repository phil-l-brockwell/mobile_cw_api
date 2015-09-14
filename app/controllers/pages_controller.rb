# Controller to define routes for the main page
class PagesController < ApplicationController

  # Routes to /, gets the data from each of the model to display on home page
  def index
    @items = Item.all
    @reviews = Review.all
    @consultants = Consultant.all
  end
end
