module Admins::DashboardHelper
	def requests_chart_data
		
		(4.weeks.ago.to_date..Date.today).map do |date|
			{
				created_at: date,
				amount: Request.where("date(created_at) = ?", date).count
			}
		end
	end
end
