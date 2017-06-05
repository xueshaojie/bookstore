class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end

  class SessionsController < Devise::SessionsController
    after_action :prepare_intercom_shutdown, only: [:destroy]

    # Your logic here

    def create
      if user = login(params[:email], params[:password])
        update_browser_uuid user.uuid

        flash[:notice] = "登陆成功"
        redirect_to root_path
      else
        flash[:notice] = "邮箱或者密码不正确"
        redirect_to new_session_path
      end
    end


    protected
    def prepare_intercom_shutdown
      IntercomRails::ShutdownHelper.prepare_intercom_shutdown(session)
    end
  end
end
