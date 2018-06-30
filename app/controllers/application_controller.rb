class ApplicationController < ActionController::Base
  before_action :configure_permitted_params, if: :devise_controller?

  private

  def configure_permitted_params
    devise_parameter_sanitizer.permit(:sign_up) do |user|
      user.permit(:name, :last_name, :bio, :email, :password, :password_confirmation)
    end
  end
end
