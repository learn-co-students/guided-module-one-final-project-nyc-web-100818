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
  choices =  app.show_search_results(array_movies)
  puts choices
  choice =  gets.chomp
  choice = choice.to_i
  picked_movie = app.pick_movie(choices, choice)
  app.find_or_create_movie(picked_movie)

else
  puts "else statement "
end

binding.pry
