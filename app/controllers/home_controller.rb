class HomeController < ApplicationController
	def index
	@item = Item.all 
	@restaurants = Restaurant.all
	@destinations = Destination.all
	@things_to_do = ThingsToDo.all
	#@categories = Category.all
	end
end
