class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :ddvise_controller?
  before_action :set_browser_uuid 

  protected

  def fetch_home_data
    @categories = Category.all
    @shopping_carts = ShoppingCart.by_user_uuid(session[:user_uuid]).count
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u|  u.permit(:uuid, :email, :password_confirmation) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:uuid, :email, :password, :current_password) }
  end

  def set_browser_uuid
    uuid = cookies[:user_uuid]

    unless uuid
      if logged_in?
        uuid = current_user.uuid
      else
        uuid = RandomCode.generate_utoken
      end
    end

    update_browser_uuid uuid

  end

  def update_browser_uuid uuid
    session[:user_uuid] = cookies.permanent['user_uuid'] = uuid
  end

end
