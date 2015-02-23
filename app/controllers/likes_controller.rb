class LikesController < InheritedResources::Base

  private

    def like_params
      params.require(:like).permit(:user_id, :item_id)
    end
end

