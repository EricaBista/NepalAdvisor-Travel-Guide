class HomeController < ApplicationController
	def index
	@item = Item.all 
	# @category = Category.all
	end
end
