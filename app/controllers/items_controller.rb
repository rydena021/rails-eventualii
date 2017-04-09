class ItemsController < ApplicationController
  before_action :set_list, only: [:create, :destroy, :complete]
  # before_action :set_item, except: [:create]


  def create
    @item = @list.items.create(item_params)
    redirect_to @list
  end

  def destroy
    @item = @list.items.find(params[:id])
    @item.destroy
    redirect_to @list
  end

  def complete
    @item = @list.items.find(params[:id])
    @item.update_attribute(:completed, true)
    redirect_to @list
  end

  private

  def set_list
    @list = List.friendly.find(params[:list_id])
  end

  # def set_item
  #   @item = @list.items.find(params[:id])
  # end

  def item_params
    params.require(:item).permit(:task)
  end
end
