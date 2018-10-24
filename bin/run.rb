require_relative '../config/environment'

app = App.new
communicator = ApiCommunicator.new
user = app.welcome
movie = app.search_for_movies
response = communicator.search_for_movie(movie)
array_movies = response["results"]

if array_movies.count > 1
  choice = ""
  puts "there are #{array_movies.count} results which movie did you want? pick a number. "
  choices =  app.show_choices(array_movies)
  puts choices
  choice =  gets.chomp
  choice = choice.to_i
  app.pick_movie(choices, choice)
  puts the_movie_string
  movie = array_movies[choice]
else
  puts "else statement "
end
