#https://everydayrails.com/2012/07/31/rails-admin-panel-from-scratch.html
class Admins::DashboardController < ApplicationController
  
  def index
  
  	@totalReqAcc = Request.where(accepted: 't').count #number of requests accepted by drivers
  	@totalOffAcc = Offer.where(accepted: 't').count #total offers accepted by passengers
  	@totalLifts = @totalOffAcc + @totalReqAcc
  	
  	@todaysReqAcc = Request.where(accepted: 't').where(created_at: 1.days.ago..DateTime.now).count
  	@todaysOffAcc = Offer.where(accepted: 't').where(created_at: 1.days.ago..DateTime.now).count
  	@todaysLifts = @todaysOffAcc + @todaysReqAcc

    @monthReqAcc = Request.where(accepted: 't').where(created_at: 28.days.ago..DateTime.now).count
    @monthOffAcc = Offer.where(accepted: 't').where(created_at: 28.days.ago..DateTime.now).count
    @monthLifts = @monthOffAcc + @monthReqAcc

    @requests = Request.order("created_at DESC")
  	
  end

end

