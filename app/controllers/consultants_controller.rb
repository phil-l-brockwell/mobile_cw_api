class ConsultantsController < ApplicationController

  def index
    render json: Consultant.all
  end

  def new
    @consultant = Consultant.new
  end

  def create
    Consultant.create(consultant_params)
    redirect_to '/consultants'
  end

  def consultant_params
    params.require(:consultant).permit(:name, :title, :profile, :img, :mainimg)
  end
end
