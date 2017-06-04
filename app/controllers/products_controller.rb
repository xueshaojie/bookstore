class ProductsController < ApplicationController

  before_action :fetch_home_data

  def index
    @products = case params[:order]
    when 'by_price'
      @products = Product.page(params[:page] || 1).per_page(params[:per_page] || 12)
        .order("price desc")
    else
      @products = Product.page(params[:page] || 1).per_page(params[:per_page] || 12)
        .order("id desc")
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def search
    @products = Product.where("title like :title", title: "%#{params[:w]}%")
      .order("id desc").page(params[:page] || 1).per_page(params[:per_page] || 10)


    unless params[:category_id].blank?
      @products = @products.where(category_id: params[:category_id])
    end

    render file: 'products/index'
  end

  def upvote
    @product = Product.find(params[:id])
    @product.upvote_by current_user
    redirect_to :back
  end

end
