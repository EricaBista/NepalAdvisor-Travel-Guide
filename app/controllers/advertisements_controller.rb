class AdvertisementsController < InheritedResources::Base

  private

    def advertisement_params
      params.require(:advertisement).permit(:text, :title, :description, :image, :started_date, :ended_date, :clicked, :position)
    end
end

