class ItemsController < ApplicationController

  def new
    @category = Category.find(params[:category_id])
    @user = User.find(session[:user_id])
    @item = @category.items.new
  end

  def create
    @category = Category.find(params[:category_id])
    @user = User.find(session[:user_id])
    @item = @category.items.new(item_params)
    @item.category_id = @category.id
    @item.user_id = @user.id
    if @item.save
      redirect_to category_item_path(@category, @item)
    else
      redirect_to '/'
    end
  end

  def show
    @category = Category.find(params[:category_id])
    @item = Item.find(params[:id])
  end

  def edit
  end

  def udpate
  end

  def delete
  end

private

  def item_params
    params.require(:item).permit(:name, :price, :description)
  end

end
