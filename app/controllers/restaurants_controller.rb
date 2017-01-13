class RestaurantsController < InheritedResources::Base
  private
  
  def restaurant_params
    params.require(:restaurant).permit(:Name, :Title, :Content)
  end
end
