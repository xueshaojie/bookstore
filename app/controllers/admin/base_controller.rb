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

module RandomCode
  class << self

    def generate_utoken len = 8
      a = lambda { rand(36).to_s(36) }
      token = ""
      len.times { |t| token << a.call.to_s }
      token
    end

    def generate_product_uuid
      Date.today.to_s.split('-')[1..-1].join() << generate_utoken(6).upcase
    end

    def generate_order_uuid
      Date.today.to_s.split('-').join()[2..-1] << generate_utoken(8).upcase
    end
  end
end
