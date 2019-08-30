class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # sign_upのときに、nameをストロングパラメータに追加する
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    # account_updateのときに、nameをストロングパラメータに追加する
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
