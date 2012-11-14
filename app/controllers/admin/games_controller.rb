class Admin::GamesController < ApplicationController
	before_filter :authenticate_admin!
	layout "admin"
	
  def index
    @games = Game.page(params[:page]).per(4)
  end

  def show
  	@all_games = Game.all
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def edit
    @game = Game.find(params[:id])
  end

  def create
    @game = Game.new(params[:game])

    respond_to do |format|
      if @game.save
        format.html { redirect_to admin_game_path(@game), :notice => 'Game was successfully created.' }
        format.json { render :json => @game, :status => :created, :location => @game }
      else
        format.html { render :action => "new" }
        format.json { render :json => @game.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @game = Game.find(params[:id])

    respond_to do |format|
      if @game.update_attributes(params[:game])
        format.html { redirect_to admin_game_path(@game), :notice => 'Game was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @game.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /games/1
  # DELETE /games/1.json
  def destroy
    @game = Game.find(params[:id])
    @game.destroy

    respond_to do |format|
      format.html { redirect_to admin_games_url }
      format.json { head :no_content }
    end
  end
end
