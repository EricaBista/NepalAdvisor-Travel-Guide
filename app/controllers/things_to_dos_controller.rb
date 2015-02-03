class ThingsToDosController < InheritedResources::Base

  private

    def things_to_do_params
      params.require(:things_to_do).permit(:Name, :Title, :Content)
    end
end

