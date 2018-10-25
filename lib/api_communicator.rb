require 'pry'
require 'rest-client'
require 'json'
require 'uri'
require 'net/http'
require_relative '../apps/models/film.rb'
require_relative '../apps/models/user_film.rb'
require_relative '../apps/models/user.rb'



class ApiCommunicator
  attr_accessor :movie
  attr_reader :key

  # hash = JSON.parse(response)
  # movie = hash["results"]
  # rating = movie["vote_average"]
  # title = movie["title"]


  def initialize(movie)
    @movie = movie
    @key = "0179b2479138dbb938e66fc2075e2501"
  end

  # def get_user(user)
  #  User.create(user)
  # end

  def self.get_movie(movie)
    # binding.pry
    @movie = movie
    @key = "0179b2479138dbb938e66fc2075e2501"
    movie_search_request = RestClient.get("https://api.themoviedb.org/3/search/movie?api_key=#{@key}&language=en-US&query=#{@movie}&page=1&include_adult=false")
    movie_search_response = JSON.parse(movie_search_request)
    # binding.pry
    movie_search_response["results"].each do |attributes|
      attributes.each do |category, value|
        if category == "title"
          puts value
        end
        end
      end
      puts "Choose your favorite movie."
      response = gets.chomp.downcase.to_s
      Film.title = response

    end
  end

  def movie_overview

  end


  # def find_movie_titles
  #    # movie_search_request = RestClient.get("https://api.themoviedb.org/3/search/movie?api_key=#{@key}&language=en-US&query=#{@movie}&page=1&include_adult=false")
  #    # movie_search_response = JSON.parse(movie_search_request)
  #     movie_search_response["results"].each do |attributes|
  #       attributes.each do |category, value|
  #         binding.pry
  #         if category == "title" && value == find_movie_response
  #           return true
  #         else
  #           false
  #           end
  #         end
  #       end
  #     end
  #   end

            # start with welcome message, what is your name(put into user table), what movie would you like to search for, puts there are # results; output the titles of the results that came up; prompt user to pick title out of all results; put that prompt into (table)(movie_title).
            # # find movie title

    #
    #   end
    #   end
    # end
    # puts "Which title would you like to choose?"
    # puts user_answer = gets.chomp
    # movie_search_response.each do |attributes, value|
    #   if attributes == "title"
    #      if value == user_answer
    #        binding.pry
    #     id << attributes["id"]
    #       return movie_search_response["title"].each do |attributes|
    #         if attributes ==



    # puts "Please choose which title you are looking for"






# movie = "notebook"
# key = "0179b2479138dbb938e66fc2075e2501"

# movie_search_request = RestClient.get("https://api.themoviedb.org/3/search/movie?api_key=#{key}&language=en-US&query=#{movie}&page=1&include_adult=false")
# movie_search_response = JSON.parse(movie_search_request)
#
# print_movie(movie)


# deliverables:

# start with welcome message, what is your name(put into user table), what movie would you like to search for, puts there are # results; output the titles of the results that came up; prompt user to pick title out of all results; put that prompt into (table)(movie_title).
# find movie title
# ...
# ....
# ...
# ...
# find actor: we will use the people api key and input that into the api base-then we will put it through json then we will puts please choose the first name of your most dreamy actors/actresses. get response. then outputs all full names of actors and actresses that match. then get response prompt user to choose the full name from the list. then we save that name in our table.
# ....
# ....
# ...'
# genre
#
# Sarah.Pai [1:11 PM]
# “id”: 28,
#      “name”: “Action”
#    },
#    {
#      “id”: 12,
#      “name”: “Adventure”
#    },
#    {
#      “id”: 16,
#      “name”: “Animation”
#    },
#    {
#      “id”: 35,
#      “name”: “Comedy”
#    },
#    {
#      “id”: 80,
#      “name”: “Crime”
#    },
#    {
#      “id”: 99,
#      “name”: “Documentary”
#    },
#    {
#      “id”: 18,
#      “name”: “Drama”
#    },
#    {
#      “id”: 10751,
#      “name”: “Family”
#    },
#    {
#      “id”: 14,
#      “name”: “Fantasy”
#    },
#    {
#      “id”: 36,
#      “name”: “History”
#    },
#    {
#      “id”: 27,
#      “name”: “Horror”
#    },
#    {
#      “id”: 10402,
#      “name”: “Music”
#    },
#    {
#      “id”: 9648,
#      “name”: “Mystery”
#    },
#    {
#      “id”: 10749,
#      “name”: “Romance”
#    },
#    {
#      “id”: 878,
#      “name”: “Science Fiction”
#    },
#    {
#      “id”: 10770,
#      “name”: “TV Movie”
#    },
#    {
#      “id”: 53,
#      “name”: “Thriller”
#    },
#    {
#      “id”: 10752,
#      “name”: “War”
#    },
#    {
#      “id”: 37,
#      “name”: “Western”
#    }
#  ]
# }
#
# Eric Laitman [1:15 PM]
# puts please choose your favorite genre. gets response. save response into table. this will combine groups of genre stories this way we won't have to make a story for each one. same id s so if thriller war or western chosen, then they will have same id and one story for that id. the stroy will not include the actual name of the genre.
#
# Eric Laitman [1:28 PM]
# popularity rating : at the end of the story outputted, we can they say would you like to know the popularity of your story? we will get response. if no then we put an end message. if yes then we put the popularity rating of that particular movie they chose
