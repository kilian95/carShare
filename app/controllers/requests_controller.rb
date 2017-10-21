class RequestsController < ApplicationController
	before_action :find_request, only: [:show, :edit, :update, :destroy]
	load_and_authorize_resource
	
	

	def index
		#Only show requests that have not been accepted AND time of departure is  not before the current date
		@requests = Request.where(accepted: 'f').where('time > ?', DateTime.now).order("created_at DESC")
	end





	def new
		@request = current_user.requests.build
	end

	def create
		@request = current_user.requests.build(request_params)

		if @request.save
			redirect_to @request, notice: "succesfully created new post"
		else
			render 'new'
		end
	end


	def edit

	end

	def destroy
		@request.destroy
		if user_signed_in?
			redirect_to root_path
		elsif admin_signed_in?
			redirect_to admins_requests_path
		end			
	end

	def show
		gon.request = @request
	end

	def update
		if @request.update(request_params)
			redirect_to @request, notice: "post succesfully updated"
		else
			render 'edit'
		end
	end

	

	private

	def request_params
		params.require(:request).permit(:destination, :departure, :time, :driverid, :accepted, :desc)
	end

	def find_request
		@request = Request.find(params[:id])
	end

end

