# Defines the routes for accessing Review data through JSON requests
class Api::ReviewsController < ApplicationController

  # Bypasses browser authenticity check so api can receive get requests from outside a browser
  skip_before_filter :verify_authenticity_token

  # Defines /reviews route, all data is rendered as JSON
  def index
    render json: Review.all
  end

  # Defines /reviews/review_params, data is retrieved from params, a review object is built
  # If it is saved successfully a 200 status is returned, which tells the app the post request was successful
  # Else a 500 status is returned, which tells the app their was a problem.
  def create
    review = Review.new(review_params)
    if review.save
      head 200
    else
      head 500
    end
  end

  private

  # Defines the params the controller can receive
  def review_params
    params.permit(:author, :text, :votes, :date)
  end
end
