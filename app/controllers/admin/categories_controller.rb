class Admin::CategoriesController < Admin::BaseController

  before_action :find_category, only: [:edit, :update, :destroy]
  before_action :category_params, only: [:create, :update]

  def index
    @categories = Category.page(params[:page] || 1).per_page(params[:per_page] || 10)
      .order("id desc")
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      flash[:notice] = "创建成功"
      redirect_to admin_categories_path
    else
      flash[:notice] = "创建失败"
      render 'new'
    end
  end

  def edit
    render 'new'
  end

  def update
    @category.attributes = category_params

    if @category.save
      flash[:notice] = "修改成功"
      redirect_to admin_categories_path
    else
      render 'new'
    end
  end

  def destroy
    @category.destroy
    redirect_to admin_categories_path
  end

  private

  def find_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name, :weight)
  end

end
