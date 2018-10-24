class App

  #prints out a welcome message prompts for username returns username
  def welcome
    puts "Welcome to movie tinder whats your name?"
    user_name = gets.chomp
    user_name
  end

  #looks up  a user by username if found prints welcome back message if not creates new user returns a User
  def find_create_user(user_name)
    if User.find_by name: user_name
      puts "Welcome back #{user_name}"
    else
      User.create(name: user_name)
    end #end if else
    User.last
  end# end welcome

  def search_for_movies
    puts "What movie would you like to search for"
    user_movies = gets.chomp
    # query api for user movie string and show him results.
    user_movies
  end

  #takes an array of movies and returns an array of those movies with
  # title, release date, and movie id as a string
  def show_choices(array_movies)
    movie_results = []
    array_movies.each_with_index do |movie, index|
      movie_results << "'#{index + 1}', #{movie["title"]}'  #{movie["release_date"]} #{movie["id"].to_s}"
    end
    movie_results
  end

  def choose_movie_from_choices(movie_choice)
    
  end


  def find_or_create_movie(movie_from_user)
    Movie.find_or_create_by(title: movie_from_user)
  end



  # create review from return val of find_or_create_movie

end

# "results": [
#   {
#     "vote_count": 9935,
#     "id": 11,
#     "video": false,
#     "vote_average": 8.2,
#     "title": "Star Wars",
#     "popularity": 35.91,
#     "poster_path": "/btTdmkgIvOi0FFip1sPuZI2oQG6.jpg",
#     "original_language": "en",
#     "original_title": "Star Wars",
#     "genre_ids": [
#       12,
#       28,
#       878
#     ],
#     "backdrop_path": "/4iJfYYoQzZcONB9hNzg0J0wWyPH.jpg",
#     "adult": false,
#     "overview": "Princess Leia is captured and held hostage by the evil Imperial forces in their effort to take over the galactic Empire. Venturesome Luke Skywalker and dashing captain Han Solo team together with the loveable robot duo R2-D2 and C-3PO to rescue the beautiful princess and restore peace and justice in the Empire.",
#     "release_date": "1977-05-25"
#   } ......
