class Wildfire < ActiveRecord::Base
	belongs_to :locations
	accepts_nested_attributes_for

	mount_uploader :fire_damage, FireDamageUploader

	def display_location
		Location.joins(:wildfires).where('locations.id = ?', location_id).first.city
	end

	def self.search(query)
		search = "%#{query}%"
		search.downcase!
    Location.joins(:wildfires).where("LOWER(locations.city) like ? OR LOWER(locations.state) like ?", search, search)
  end	

end
