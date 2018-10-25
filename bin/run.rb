require_relative '../config/environment'
require_relative '../lib/api_communicator.rb'
require_relative '../lib/command_line_interface.rb'
require 'pry'

welcome_message
name = get_user
create_user(name)
movie = gets_user_input
list = ApiCommunicator.get_movie(movie)
puts list
# binding.pry
# user_movie = find_movie
# new_user = ApiCommunicator.new(get_user)
# new_session.find_movie_titles

def find_lines(station)
  station.lines
end


puts "End"
