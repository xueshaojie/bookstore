class Admin::ProductsController < Admin::BaseController

  before_action :find_product, only: [:edit, :update, :destroy]
  before_action :product_params, only: [:create, :update]

  def index
    if params[:category].blank?
      @products = Product.all.recent
    else
      @category_id = Category.find_by(name: params[:category]).id
      @products = Product.where(category_id: @category_id).recent
    end
  end

  def show
    @product = Product.find(params[:id])
    @photos = @product.photos.all
  end

  def new
    @product = Product.new
    @categories = Category.all
    @photo = @product.photos.build
  end

  def create
    @product = Product.new(product_params)
    @categories = Category.all

    if @product.save
      if params[:photos] != nil
        params[:photos]['image'].each do |a|
          @photo = @product.photos.create(:image => a)
        end
      end
      redirect_to admin_products_path
    else
      flash[:notice] = "保存失败"
      render 'new'
    end
  end

  def edit
    @categories = Category.all
    render 'new'
  end

  def update
    @product.attributes = product_params
    @categories = Category.all

    if params[:photos] != nil
      @product.photos.destroy_all
      params[:photos]['image'].each do |a|
        @picture = @product.photos.create(:image => a)
      end
      @product.update(product_params)
      redirect_to admin_products_path

    elsif @product.update(product_params)
      redirect_to admin_products_path
    else
      flash[:notice] = "修改失败"
      render 'edit'
    end
  end

  def destroy
    @product.destroy
    redirect_to admin_products_path
  end

  private

  def find_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:title, :author, :amount, :price, :category_id, :uuid, :description, :id, :image)
  end

end
