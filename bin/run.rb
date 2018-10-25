require_relative '../config/environment'

app = App.new
communicator = ApiCommunicator.new
user = app.welcome
movie = app.search_for_movies
response = communicator.search_for_movie(movie)
genres_list = communicator.get_genres
array_movies = response["results"]
search_results = app.show_search_results(array_movies) #the users results formatted with only the info we want. What we will be using moving forward.



# returns a user integer choice -1 or or zero if there is only one choice
def choose_movie(search_results)
  if search_results.count > 1
    choice = ""
    puts "there are #{search_results.count} results which movie did you want? pick a number. "
    puts search_results
    choice =  gets.chomp
    choice = choice.to_i #get the array of index of the movie you chose.
    return choice
  else
    return 1
  end
end


user_choice = choose_movie(array_movies)
picked_movie = app.pick_movie(search_results, user_choice)

app.find_or_create_movie(picked_movie)


def match_genres_with_movie
  array_movies.map do |movie|
    movie["genre_ids"]
  end
end

binding.pry
