class ImagesController < ApplicationController
  before_action :find_image, only: [:show, :edit, :update, :destroy]

  def index
    @images = Image.all
  end

  def show
  end

  def new
    @image = Image.new
  end

  def edit
  end

  def create
    @image = Image.new(image_params)
    @image.user = current_user

    if @image.save
      flash[:notice] = 'Image was successfully created.'
      redirect_to @image
    else
      render :new
    end
  end

  def update
    if @image.update(image_params)
      flash[:notice] = 'Image was successfully updated.'
      redirect_to @image
    else
      render :edit
    end
  end

  def destroy
    @image.destroy
    flash[:notice] = 'Image was successfully destroyed.'
    redirect_to images_url
  end

  private

  def find_image
    @image = Image.find(params[:id])
  end

  def image_params
    params.require(:image).permit(:name, :picture, :user_id)
  end
end
