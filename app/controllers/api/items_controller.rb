class Api::ItemsController < ApplicationController

  protect_from_forgery with: :null_session
  skip_before_filter :verify_authenticity_token
  
  def index
    render json: Item.all
  end
end
