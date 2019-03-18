class ItemsController < ApplicationController
  before_action :set_item, only: [:edit, :update, :destroy]
  before_action :authorize, only: [:edit, :update]
 
  def index
    @items = Item.all
  end
  
  def show
    @item = Item.find_by_slug!(params[:slug])
    @items = Item.where(:category_id => @item.category_id).where.not(:id => @item.id).limit(4).order("RANDOM()")
    @review = Review.new
    @review_count=Review.where(:item_id =>@item).count
    @like_count=Like.where(:item_id =>@item).count 
  end

  def new
    @item = Item.new
    @description = Description.new
    @image = Image.new
  end

  def edit
    @item = Item.find(params[:id])
    @description = Description.find_by(item_id=@item.id)
  end

  def create
    @item = Item.new(item_params)
    params[:description].each_value { |desc| @item.descriptions.build(desc) }
    @image = @item.images.build(image_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end

      if @image.update(image_params)
        format.html { redirect_to @item, notice: 'Image updated'}
      else
        format.html { render :edit}
      end
        
      if @description.update(description_params)
        format.html { redirect_to @item, notice: 'description updated'}
      else
        format.html { render :edit}
      end
    end
  end

  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def search
    @q=params[:q]
    @items = Item.item_search(params[:q])
    @categories = Category.category_search(params[:q])
  end

  def seed
    @c=Category.all
  end

  private

  def set_item
    @item = Item.find(params[:id])
    @image = Image.find_by item:@item 
    @description = Description.find_by item:@item 
  end

  def image_params
    params.require(:image).permit(:Title, :Content, :Order, :image)
  end
  
  def item_params
    params.require(:item).permit(:Name, :Description, :Order, :category_id, :slug)
  end

  def description_params
    params.require(:description).permit({:description_attributes => []})
  end
end
