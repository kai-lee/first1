json.array!(@add_books) do |add_book|
  json.extract! add_book, :first_name, :last_name, :email, :zipcode, :fav_color
  json.url add_book_url(add_book, format: :json)
end
