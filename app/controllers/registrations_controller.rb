class RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters, only: :create

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :photo])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :photo])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(sign_up_params)
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :photo, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :photo, :email, :password, :password_confirmation, :current_password)
  end
end
