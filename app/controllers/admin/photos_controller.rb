class Admin::PhotosController < ApplicationController

  before_action :find_product
  before_action :find_photo, only: [:update, :destroy]

  def index
    @photos = @product.photos
  end

  def create
    params[:images].each do |image|
      @product.photos << Photo.new(image: image)
    end

    redirect_to :back
  end

  def update
    @photo.weight = params[:weight]
    if @photo.save
      flash[:notice] = "修改成功"
    else
      flash[:notice] = "修改失败"
    end

    redirect_to :back
  end

  def destroy
    @photo.destroy
    redirect_to :back
  end

  private

  def find_product
    @product = Product.find params[:product_id]
  end

  def find_photo
    @photo = @product.photos.find(params[:id])
  end
end
