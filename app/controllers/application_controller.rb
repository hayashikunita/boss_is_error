class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_search

  def set_search
    @p = Prototype.ransack(params[:q])
    @results = @p.result.includes(:category)
  end




  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name , :profile, :occupation, :position, :reset_password_token])
  end
  
end
