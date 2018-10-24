require_relative '../config/environment'

app = App.new
communicator = ApiCommunicator.new
user = app.welcome
movies = app.search_for_movies
response = communicator.search_for_movie(movies)
array_movies = response["results"]

if array_movies.count > 1
  choice = ""
  puts "there are #{array_movies.count} results which movie did you want? pick a number. "
  puts app.show_choices(array_movies)
  choice =  gets.chomp
  movie = array_movies[choice]
  puts movie
else
  puts "you chose #{movie}"
end
