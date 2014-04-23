json.array!(@locations) do |location|
  json.extract! location, :id, :city, :state, :prevention_program
  json.url location_url(location, format: :json)
end
