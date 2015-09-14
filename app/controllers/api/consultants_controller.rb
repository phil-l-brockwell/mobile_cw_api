# Defines the routes for accessing consultant data through JSON requests
class Api::ConsultantsController < ApplicationController
  
  # Bypasses browser authenticity check so api can receive get requests from outside a browser
  skip_before_filter :verify_authenticity_token

  # Defines /consultants route, all data is rendered as JSON
  def index
    render json: Consultant.all
  end
end
