class DescriptionsController < ApplicationController
  before_action :set_description, only: [:show, :edit, :update, :destroy]

  def index
    @descriptions = Description.all
  end

  def show
  end

  def new
    @description = Description.new
  end

  def edit
  end

  def create
    @description = Description.new(description_params)
    respond_to do |format|
      if @description.save
        format.html { redirect_to @description, notice: 'Description was successfully created.' }
        format.json { render :show, status: :created, location: @description }
      else
        format.html { render :new }
        format.json { render json: @description.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @description.update(description_params)
        format.html { redirect_to @description, notice: 'Description was successfully updated.' }
        format.json { render :show, status: :ok, location: @description }
      else
        format.html { render :edit }
        format.json { render json: @description.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @description.destroy
    respond_to do |format|
      format.html { redirect_to descriptions_url, notice: 'Description was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
   
  def set_description
    @description = Description.find(params[:id])
  end

  def description_params
    params.require(:description).permit(:Title, :Content, :Order, :item_id)
  end
end
