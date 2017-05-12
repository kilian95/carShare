class Offer < ApplicationRecord
	belongs_to :user
	scope :last_x_days, -> (x) { where(created_at: x.days.ago..Time.zone.now) }
end
