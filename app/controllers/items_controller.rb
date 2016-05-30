class ItemsController < ApplicationController

  before_filter :authorize, :except => [:index, :show]

  def index
    if params[:search]
      @items = Item.search(params[:search]).order("created_at DESC")
    else
      @items = Item.all.order('created_at DESC')
    end
  end

  def new
  	@item = Item.new()
  end

  def show
  end

  def create
  	@item = Item.new(item_parameters)

	if @item.save
	  redirect_to items_path
	end
  end

 private
 def item_parameters
	params.require(:item).permit(:title, :description, :portfolio_image, :category_ids => [])
 end

end
