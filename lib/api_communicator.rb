require 'pry'
require 'rest-client'
require 'json'
require 'uri'
require 'net/http'
require_relative '../apps/models/film.rb'
require_relative '../apps/models/user_film.rb'
require_relative '../apps/models/user.rb'

class ApiCommunicator

  @@key = "0179b2479138dbb938e66fc2075e2501"
  @@movie = ''


  def self.key 
    @@key 
  end 

  def self.movie 
    @@movie 
  end 

  def self.movie_search
    movie_search_request = RestClient.get("https://api.themoviedb.org/3/search/movie?api_key=#{@@key}&language=en-US&query=#{@@movie}&page=1&include_adult=false")
    movie_search_response = JSON.parse(movie_search_request)
  end 

  def self.get_movie_list(movie)
    @@movie = movie
    movie_search_response = self.movie_search
    movie_search_response["results"].each do |attributes|
      attributes.each do |category, value|
        if category == "title" 
          puts "\n #{value}"
        end
      end
    end
  end

    def self.get_title(list)
      puts "\nFrom this list, which is your favorite?"
      response = gets.chomp.downcase.to_s
      response
    end

    def self.get_description(title)
      self.movie_search["results"].each do |movie|
        movie.each do |category, value|
          if category == "title" && value.downcase == title
            description = movie["overview"]
            return description
          end
        end
      end
    end

    def self.create_film(title, description)
      Film.create(title: title, description: description)
    end

    def self.create_user_film(user_id, film_id)
      UserFilm.create(user_id: user_id.id, film_id: film_id.id)
    end

    
end#end of class  

#_______________________________________________________________________________
# experimental code
/#
under user class 
    def self.film_id_from_user_films
    user_film.user_id.find do |user_film|
        user_film == self.id
        film_id
    end

    under film class 
        def output_description
    overview = film.id.find do |film_id|
        film_id == User.film_id_from_user_films
    end
        description.overview
    end */
  