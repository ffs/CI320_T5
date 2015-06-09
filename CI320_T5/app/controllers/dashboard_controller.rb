class DashboardController < ApplicationController
	# GET /dashboard
	# GET /dashboard.json
	def index
		@user = current_user
	end
end
