class ApplicationController < ActionController::Base
	
	# Includes Authorization mechanism
	include Pundit

	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception

	# Globally rescue Authorization Errors in controller.
	# Returning 403 Forbidden if permission is denied
	rescue_from Pundit::NotAuthorizedError, with: :permission_denied

	# Enforces access right checks for individuals resources
	after_filter :verify_authorized, :except => :index

	# Enforces access right checks for collections
	after_filter :verify_policy_scoped, :only => :index

	private

	def permission_denied
		head 403
	end

	# Overwriting the sign_out redirect path method
	def after_sign_out_path_for(resource_or_scope)
		new_user_session_path
	end

	# Catch all CanCan errors and alert the user of the exception
	rescue_from CanCan::AccessDenied do |exception|
		flash[:error] = exception.message
		redirect_to '/dashboard'
	end

	# Overwriting the sign_in redirect path method
	def after_sign_in_path_for(resource_or_scope)
		'/dashboard'
	end

end
