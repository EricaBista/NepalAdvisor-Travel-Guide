class HomeController < ApplicationController
	def index
	@item = Item.all 
	@restaurants = Restaurant.all
	@destinations = Category.where(:is_destination => true).order(:Order)
	@things_to_do = ThingsToDo.all
	#@categories = Category.all
	end
end
