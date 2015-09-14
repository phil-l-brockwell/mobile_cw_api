# Defines the routes for accessing Item data through JSON requests
class Api::ItemsController < ApplicationController
  
  # Bypasses browser authenticity check so api can receive get requests from outside a browser
  skip_before_filter :verify_authenticity_token
  
  # Defines /items route, all data is rendered as JSON
  def index
    render json: Item.all
  end
end
