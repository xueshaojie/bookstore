class WelcomeController < ApplicationController

  def index
    fetch_home_data

    @products = Product.page(params[:page] || 1).per_page(params[:per_page] || 12)
      .order("id desc").includes(:main_photo)
  end

end
