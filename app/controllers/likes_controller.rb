class LikesController < InheritedResources::Base
def index
    @likes = Like.all
  end
  
  def create

@like = Like.new(like_params)
    respond_to do |format|
      @like.user_id = current_user.id if current_user
      if @like.save 
        format.html { redirect_to slugged_path(Item.find_by_id(@like.item_id).slug), notice: 'Liked successfully.' }
        format.json { render :show, status: :created, location: @like }
      else
        format.html { redirect_to item_path(@like.item_id) }
        format.json { render json: @like.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
  	@like = Like.find(params[:id])
    @like.destroy
    respond_to do |format|
      format.html { redirect_to slugged_path(Item.find_by_id(@like.item_id).slug), notice: 'like was successfully destroyed.' }
      format.json { head :no_content }
    end
end
  private

    def like_params
      params.require(:like).permit(:user_id, :item_id)
    end
end

