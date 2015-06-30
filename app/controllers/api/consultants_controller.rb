class Api::ConsultantsController < ApplicationController
  
  skip_before_filter :verify_authenticity_token

  def index
    render json: Consultant.all
  end
end
