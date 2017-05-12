class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

   before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:fname, :lname, :gender, :avatar])
	end

	def current_ability
		if admin_signed_in?
			@current_ability ||= Ability.new(current_admin)
		else
			@current_ability ||= Ability.new(current_user)
		end
	end
end
