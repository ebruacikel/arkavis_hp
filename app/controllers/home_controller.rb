class HomeController < ApplicationController
	def index
	  @all_games = Game.order("weight ASC")
	  
		@games = Game.all(:limit => 2) #where(:featured => true)
	end
	
	def test
	  render :layout => false
	end

end
