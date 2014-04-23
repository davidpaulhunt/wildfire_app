class Location < ActiveRecord::Base
	has_many :wildfires

  scope :active_fires, -> { joins.(:wildfires).where(ongoing: true) }

	def self.search(query)
		search = "%#{query}%"
		search.downcase!
    where("LOWER(city) like ? OR LOWER(state) like ?", search, search)
  end



  # def self.date_search(query)
  # 	search = "%#{query}%"
  # 	# self.wildfires.start_date.where("start_date > ?", search)
  # 	temp = Location.joins(:wildfires).where("start_date > ?", search)
  # 	results = []
  # 	temp.each do |w|
  # 		results << w.wildfires
  # 	end
  # 	results
  # end

end
