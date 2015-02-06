  class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_filter :authorize, only: [:edit, :update]
  # GET /items
  # GET /items.json
  def index
    @items = Item.all
  end

  # GET /items/1
  # GET /items/1.json
  def show
    @item = Item.find(params[:id]) 
    @items = Item.where(:category_id => @item.category_id).where.not(:id => @item.id).limit(4).order("RANDOM()")
     # @image = Image.find(params[:id]) 
  end

  # GET /items/new
  def new
    @item = Item.new
    @description = Description.new
    @image = Image.new

  end

  # GET /items/1/edit
  def edit
   @item = Item.find(params[:id])
   @description = Description.find_by(item_id=@item.id)
  end



  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)

    params[:description].each_value { |desc| @item.descriptions.build(desc) }
       #@description = @item.descriptions.build(description_params)
       # params[:image].each_value { |img| @item.images.build(img) }
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

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
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

  # DELETE /items/1
  # DELETE /items/1.json

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

  end

  def seed
    @c=Category.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
       @image = Image.find_by item:@item 
       @description = Description.find_by item:@item 
    end

    def image_params
      params.require(:image).permit(:Title, :Content, :Order, :image)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:Name, :Description, :Order, :category_id)
    end

    def description_params
      params.require(:description).permit({:description_attributes => []})
    end

end
