class OrdersController < ApplicationController

  def new
    fetch_home_data
    @shopping_carts = ShoppingCart.by_user_uuid(session[:user_uuid])
      .order("id desc").includes([:product => [:main_photo]])
  end

  def create
    shopping_carts = ShoppingCart.by_user_uuid(session[:user_uuid]).includes(:product)
    if shopping_carts.blank?
      redirect_to shopping_carts_path
      return
    end

    address = current_user.addresses.find(params[:address_id])
    Order.create_order_from_shopping_carts!(current_user, address, shopping_carts)

    redirect_to payments_path
  end

end
