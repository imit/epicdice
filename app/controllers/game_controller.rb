class GameController < ApplicationController
  def map
    @map_points=  MapPoint.all
  end

end
