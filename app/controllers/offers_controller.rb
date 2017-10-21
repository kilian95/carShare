class OffersController < ApplicationController
	before_action :find_offer, only: [:show, :edit, :update, :destroy]
	load_and_authorize_resource
	

	def index
		#show offers where time of departure is not in the past
		@offers = Offer.where('time > ?', DateTime.now).order("created_at DESC")
	end

	def new
		@offer = current_user.offers.build
	end

	def create
		@offer = current_user.offers.build(offer_params)

		if @offer.save
			redirect_to @offer, notice: "succesfully created new post"
		else
			render 'new'
		end
	end

	def edit

	end

	def destroy
		@offer.destroy
		if user_signed_in?
			redirect_to root_path
		elsif admin_signed_in?
			redirect_to admins_offers_path
		end		
	end

	def show
		gon.offer = @offer
	end

	def update
		if @offer.update(offer_params)
			redirect_to @offer, notice: "post succesfully updated"
		else
			render 'edit'
		end
	end

	private

	def offer_params
		params.require(:offer).permit(:destination, :departure, :time, :seats, :passengerid, :accepted, :desc)
	end

	def find_offer
		@offer = Offer.find(params[:id])
	end


end
