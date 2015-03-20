class AdvertisementsController < ApplicationController

  def clicked 
  @ads = Advertisement.find(params[:id])
   @ads.increment!(:clicked)
  redirect_to @ads.link
  end 

private
    def advertisement_params
      params.require(:advertisement).permit(:text, :title, :description, :image, :started_date, :ended_date, :clicked, :position)
    end
end

