class DashboardController < ApplicationController
	before_filter :get_user
	# GET /dashboard
	# GET /dashboard.json
	def index
	end

	private

	def get_user
      @user = current_user
    end
end
