json.array!(@addresses) do |address|
  json.extract! address, :first_name, :last_name, :email, :zip, :fav_color
  json.url address_url(address, format: :json)
end
