class Admins::RequestsController < ApplicationController
	before_action :find_request, only: [:show]

	def index
		@search = Request.search(params[:q])
		@requests = @search.result.order("created_at DESC").page(params[:page]).per(20) #display 20 per page
		#@requests = Request.order("created_at DESC").page(params[:page])
	end

	def find_request
		@request = Request.find(params[:id])
	end


	
end