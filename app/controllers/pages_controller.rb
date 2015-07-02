class PagesController < ApplicationController

  def index
    @items = Item.all
    @reviews = Review.all
    @consultants = Consultant.all
  end
end
