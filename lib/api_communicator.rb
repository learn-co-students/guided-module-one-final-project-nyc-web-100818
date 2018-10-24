require 'pry'
require 'rest-client'
require 'json'
require 'uri'
require 'net/http'
require_relative './actor.rb'

movie = "notebook"
key = "0179b2479138dbb938e66fc2075e2501"

movie_search_request = RestClient.get("https://api.themoviedb.org/3/search/movie?api_key=#{key}&language=en-US&query=#{movie}&page=1&include_adult=false")
movie_search_response = JSON.parse(movie_search_request) 

# puts "Would you like to save this movie to your profile?"

# user_input = gets.chomp 

# if user_input == "Y"
#     Movie.new()
# end 

binding.pry


#  movie_search_response = RestClient.get('https://api.themoviedb.org/3/configuration?api_key=0179b2479138dbb938e66fc2075e2501')

#  year_search_response =  https://api.themoviedb.org/3/movie/100/release_dates?api_key=0179b2479138dbb938e66fc2075e2501

#  hash = JSON.parse(response)

#  binding.pry

 0
# /movie/{movie_id}?api_key=<<0179b2479138dbb938e66fc2075e2501>>&language=en-US