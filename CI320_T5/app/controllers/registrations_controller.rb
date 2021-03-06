class RegistrationsController < Devise::RegistrationsController

	skip_before_filter :require_no_authentication
	
	private

	def sign_up_params
	params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :role_id)
	end

	def account_update_params
	params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password, :role_id)
	end

end