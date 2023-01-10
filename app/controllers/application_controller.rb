class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :role])
  end

  private
  def after_sign_out_path_for(resource_or_scope)
    p 111111111111111111111111111111111
    root_path  
  end
end
