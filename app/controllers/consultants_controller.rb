class ConsultantsController < ApplicationController

  before_action :authenticate_admin!, except: :index

  def index
    @consultants = Consultant.all
  end

  def new
    @consultant = Consultant.new
  end

  def create
    Consultant.create(consultant_params)
    redirect_to '/consultants'
  end

  def destroy
    consultant = Consultant.find(params[:id])
    consultant.destroy
    redirect_to '/consultants'
  end

  private

  def consultant_params
    params.require(:consultant).permit(:name, :title, :profile, :img, :mainimg)
  end
end
