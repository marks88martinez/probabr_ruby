class ApplicationController < ActionController::Base
    before_action :authenticate_user!


    before_action :conf_permitted_parameter, if: :devise_controller?

    def conf_permitted_parameter
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
        
    end

    
    
end
