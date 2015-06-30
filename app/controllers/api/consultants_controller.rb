class Api::ConsultantsController < ApplicationController

  def index
    render json: Consultant.all
  end
end
