class ReviewsController < ApplicationController
def index
    @reviews = Review.all
  end
  def create

@review = Review.new(review_params)
    respond_to do |format|
      @review.user_id = current_user.id if current_user
      if @review.save 
        format.html { redirect_to item_path(@review.item_id), notice: 'Review was successfully created.' }
        format.json { render :show, status: :created, location: @review }
      else
        format.html { redirect_to item_path(@review.item_id) }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end
   def review_params
      params.require(:review).permit(:title, :description, :item_id, :parent_id, :user_id)
    end
end

