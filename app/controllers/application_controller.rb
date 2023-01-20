class ApplicationController < ActionController::Base
  include ActionController::Helpers
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :role])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :role])
  end

  def destroy
    p 11111111111111111111111111
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_path
  end

  private
  def after_sign_out_path_for(resource_or_scope)
    root_path  
  end
end
