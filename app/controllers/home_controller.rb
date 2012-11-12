class HomeController < ApplicationController
	def index
		@games = Game.all(:limit => 2) #where(:featured => true)
	end
end
