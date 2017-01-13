class DestinationsController < InheritedResources::Base
  private

  def destination_params
    params.require(:destination).permit(:Name, :Title, :Content)
  end
end
