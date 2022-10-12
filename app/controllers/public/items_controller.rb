class Public::ItemsController < ApplicationController
  def index
     reverse_items = Item.order(id:"DESC")
   @items = reverse_items.first(8)
  end

  def show
  end
end
