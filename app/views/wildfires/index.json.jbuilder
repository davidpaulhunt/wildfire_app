json.array!(@wildfires) do |wildfire|
  json.extract! wildfire, :id, :start_date, :end_date, :size, :ongoing, :location_id
  json.url wildfire_url(wildfire, format: :json)
end
