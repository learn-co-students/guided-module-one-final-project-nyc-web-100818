require_relative '../config/environment'

app = App.new
communicator = ApiCommunicator.new
user = app.welcome
movie = app.get_movie_from_user
binding.pry
communicator.search_for_movie(movie)
