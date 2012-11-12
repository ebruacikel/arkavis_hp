class GamesController < ApplicationController
  def show
  	@all_games = Game.all
    @game = Game.find(params[:id])
  end
end
