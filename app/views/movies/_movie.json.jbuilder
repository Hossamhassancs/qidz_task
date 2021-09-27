json.extract! movie, :id, :description, :year, :director, :film_location, :country, :created_at, :updated_at
json.url movie_url(movie, format: :json)
