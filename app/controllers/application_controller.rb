class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :basic_auth

  protected

  def configure_permitted_parameters
    # sign_upのときに、nameをストロングパラメータに追加する
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    # account_updateのときに、nameをストロングパラメータに追加する
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

  private

  # Basic認証
  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == Rails.application.credentials.BASIC_AUTH_USER && password == Rails.application.credentials.BASIC_AUTH_PASSWORD
    end
  end

end
