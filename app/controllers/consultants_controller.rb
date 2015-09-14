# Controller which defines the routes for accessing Consultant data via HTML
class ConsultantsController < ApplicationController

  # Ensures that all routes except index require authentication
  before_action :authenticate_admin!, except: :index

  # Defines /consultants route, automatically renders views/consultants/index
  def index
    @consultants = Consultant.all
  end

  # Defines /consultants/new, automatically renders views/consultants/new
  def new
    @consultant = Consultant.new
  end

  # Defines /consultants/create, receives params, builds consultants object and redirects to /consultants
  def create
    Consultant.create(consultant_params)
    redirect_to '/consultants'
  end

  # Defines /consultants/consultant_id/destroy, find consultants with id from params, destroys, the redirects to /consultants
  def destroy
    consultant = Consultant.find(params[:id])
    consultant.destroy
    redirect_to '/consultants'
  end

  private

  # Defines the params that are permitted when making post requests via this controller
  def consultant_params
    params.require(:consultant).permit(:name, :title, :profile, :img, :mainimg)
  end
end
