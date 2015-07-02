class ItemsController < ApplicationController

  before_action :authenticate_admin!, except: :index

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    Item.create(item_params)
    redirect_to '/items'
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to '/items'
  end

  private

  def item_params
    params.require(:item).permit(:name, :image, :description, :price)
  end
end
