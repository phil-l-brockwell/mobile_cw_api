class ReviewsController < ApplicationController

  def index
    render json: Review.all
  end

  def new
    @review = Review.new
  end

  def create
    Review.create(review_params)
    redirect_to '/reviews'
  end

  def review_params
    params.require(:review).permit(:author, :text, :votes)
  end

end
