class Api::ReviewsController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def index
    render json: Review.all
  end

  def create
    review = Review.new(review_params)
    if review.save
      head 200
    else
      head 500
    end
  end

  private

  def review_params
    params.permit(:author, :text, :votes, :date)
  end
end
