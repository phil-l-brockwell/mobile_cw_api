# Controller which defines the routes for accessing Item data via HTML
class ItemsController < ApplicationController

  # Ensures that all routes except index require authentication
  before_action :authenticate_admin!, except: :index

  # Defines /items route, automatically renders views/items/index
  def index
    @items = Item.all
  end

  # Defines /items/new, automatically renders views/items/new
  def new
    @item = Item.new
  end

  # Defines /items/create, receives params, builds item object and redirects to /items
  def create
    Item.create(item_params)
    redirect_to '/items'
  end

  # Defines /items/item_id/destroy, find item with id from params, destroys, the redirects to /items
  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to '/items'
  end

  private

  # Defines the params that are permitted when making post requests via this controller
  def item_params
    params.require(:item).permit(:name, :image, :description, :price)
  end
end
