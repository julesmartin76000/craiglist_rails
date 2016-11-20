class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @items = Item.all
  end

  def edit
  end

  def udpate
  end

  def delete
  end
end
