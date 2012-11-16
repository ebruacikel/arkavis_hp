class GamesController < ApplicationController
  def show
    @all_games = Game.all
    @game = Game.find(params[:id])
  end

  def play_swf
    @game = Game.find(params[:id])
    render :layout=>false
  end

  def play_unity
    @game = Game.find(params[:id])
    render :layout=>false
  end
end
