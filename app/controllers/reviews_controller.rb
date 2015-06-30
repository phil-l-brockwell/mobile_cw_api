class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    Review.create(review_params)
    redirect_to '/reviews'
  end

  def destroy
    review = Review.find(params[:id])
    review.destroy
    redirect_to '/reviews'
  end

  private

  def review_params
    params.require(:review).permit(:author, :text, :votes)
  end
end
