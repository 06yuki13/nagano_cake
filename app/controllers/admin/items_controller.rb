class Admin::ItemsController < ApplicationController
  def index
  end

  def new
    @item = Item.new
  end

  def show
  end

  def edit
  end

  def create
    item = Item.new(item_params)
    item.save
    redirect_to '/admin/items'
  end

  def update
  end

  private

  def image_params
    params.require(:item).permit(:name, :introduction, :image)
  end

end
