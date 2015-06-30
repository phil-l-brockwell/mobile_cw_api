class Api::ItemsController < ApplicationController

  skip_before_filter :verify_authenticity_token
  
  def index
    render json: Item.all
  end
end
