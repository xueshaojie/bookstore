class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :ddvise_controller?

  protected

  def fetch_home_data
    @categories = Category.all
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u|  u.permit(:uuid, :email, :password_confirmation) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:uuid, :email, :password, :current_password) }
  end

end
