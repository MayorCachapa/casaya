class ApplicationController < ActionController::Base
    before_action :authenticate_user!, only: [:new, :create]
    before_action :configure_permitted_parameters, if: :devise_controller?
    
    protect_from_forgery with: :exception
    before_action :configure_permitted_parameters, if: :devise_controller?

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :is_homeowner])
     devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :is_homeowner])
    end
end
