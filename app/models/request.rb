class Request < ApplicationRecord

	belongs_to :user
	validates :destination, :departure, :time, :presence => true
	scope :last_x_days, -> (x) { where(created_at: x.days.ago..Time.zone.now) }	
end
