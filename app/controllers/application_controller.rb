class ApplicationController < ActionController::Base
  protect_from_forgery
	before_filter :load_all_pages_for_menu, :load_all_games_for_menu

	def load_all_pages_for_menu
		@all_pages = Page.all
	end
	def load_all_games_for_menu
		@all_games = Game.all
	end
	
end
