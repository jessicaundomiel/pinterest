class RegistrationsController < Devise::RegistrationsController

	protected

	def after_sign_up_path_for(user)
		"/static_pages/#{user.id}/edit_user/"
	end

end
