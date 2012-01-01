class MapController < ApplicationController
  def add
    @item_reference = ItemReference.new
    @items = Item.all
  end

  def show
    @map_points=  MapPoint.all
  end

  def index
    @map_points=  MapPoint.all
  end

  def create_something
    coords = [params[:lat], params[:lng]]
    item = Item.find(params[:item])
    conditions = { :coordinates => coords}
    mp = MapPoint.find(:first, :conditions => conditions) || MapPoint.create!(conditions)
    item_reference = ItemReference.create(:map_point => mp, :item => item)
    if item_reference
      redirect_to map_path
    else
      redirect_to map_add_path
    end
    
  end
end
