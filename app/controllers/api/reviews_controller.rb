class Api::ReviewsController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def index
    render json: Review.all
  end

  def create
    Review.create(review_params)
  end

  def update

  end

  private

  def review_params
    params.permit(:author, :text, :votes)
  end
end
