require_relative '../config/environment'
require_relative '../lib/api_communicator.rb'
require_relative '../lib/command_line_interface.rb'
require 'pry'

welcome_message
user_movie = find_movie
new_session = ApiCommunicator.new(user_movie)
new_session.find_movie_titles
binding.pry
puts "End"
