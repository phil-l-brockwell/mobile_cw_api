# Controller which defines the routes for accessing Review data via HTML
class ReviewsController < ApplicationController

  # Ensures that all routes except index require authentication
  before_action :authenticate_admin!, except: :index

  # Defines /reviews route, automatically renders views/reviews/index
  def index
    @reviews = Review.all
  end

  # Defines /reviews/new, automatically renders views/reviews/new
  def new
    @review = Review.new
  end

  # Defines /reviews/create, receives params, builds review object and redirects to /reviews
  def create
    Review.create(review_params)
    redirect_to '/reviews'
  end

  # Defines /reviews/review_id/destroy, find review with id from params, destroys, the redirects to /reviews
  def destroy
    review = Review.find(params[:id])
    review.destroy
    redirect_to '/reviews'
  end

  private

  # Defines the params that are permitted when making post requests via this controller
  def review_params
    params.require(:review).permit(:author, :text, :votes)
  end
end
