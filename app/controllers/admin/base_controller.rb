class Admin::BaseController < ActionController::Base

  layout 'admin/layouts/admin'
  before_action :authenticate_user!
  before_action :admin_required

  protected

  def admin_required
    unless current_user.admin?
      flash[:warning] = "You have no permissioin"
      redirect_to root_path
    end
  end

end
