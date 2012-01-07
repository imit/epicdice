class GameController < ApplicationController

  def index
    @active_player_list = current_user.player_characters
  end

end
