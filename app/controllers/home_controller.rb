class HomeController < ApplicationController
  
  def index
    @item = Item.all 
    @destinations = Category.where(:is_destination => true).order(:Order)
    @things_to_do = ThingsToDo.all
  end
end
