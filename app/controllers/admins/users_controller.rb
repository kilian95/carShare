class Admins::UsersController < ApplicationController
  
	before_action :find_user, only: [:show]

	def index
		@search = User.search(params[:q])
		@users = @search.result.page(params[:page]).per(20) #display 20 per page
		#@requests = Request.order("created_at DESC").page(params[:page])
	end

	def find_user
		@user = User.find(params[:id])
	end

	
end


