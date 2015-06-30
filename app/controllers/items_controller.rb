class ItemsController < ApplicationController

  def index
    render json: Item.all
  end

  def new
    @item = Item.new
  end

  def create
    Item.create(item_params)
    redirect_to '/items'
  end

  def show
    item = Item.find(params[:id])
    render json: item
  end

  private

  def item_params
    params.require(:item).permit(:name, :image, :description, :price)
  end
end
