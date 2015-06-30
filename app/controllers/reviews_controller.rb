class ReviewsController < ApplicationController

  skip_before_filter :verify_authenticity_token

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
    params.permit(:author, :text, :votes, :date)
  end
end
