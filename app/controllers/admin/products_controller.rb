class Admin::ProductsController < Admin::BaseController

  before_action :find_product, only: [:edit, :update, :destroy]
  before_action :product_params, only: [:create, :update]

  def index
    @products = Product.page(params[:page] || 1).per_page(params[:per_page] || 10)
      .order("id desc")
  end

  def new
    @product = Product.new
    @categories = Category.all
  end

  def create
    @product = Product.new(product_params)
    @categories = Category.all

    if @product.save
      flash[:notice] = "保存成功"
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

    if @product.save
      flash[:notice] = "修改成功"
      redirect_to admin_products_path
    else
      flash[:notice] = "修改失败"
      render 'new'
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
