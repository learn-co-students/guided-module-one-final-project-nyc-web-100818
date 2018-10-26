require_relative '../config/environment'
require_relative '../lib/api_communicator.rb'
require_relative '../lib/command_line_interface.rb'
require 'pry'


welcome_message
name = get_user
user_id = create_user(name)
movie = gets_user_input
list = ApiCommunicator.get_movie_list(movie)
title = ApiCommunicator.get_title(list)
description = ApiCommunicator.get_description(title)
film_id = ApiCommunicator.create_film(title, description)

user_film_id = ApiCommunicator.create_user_film(user_id.id, film_id.id)
 # User.print_movies



User.find(user_id.id).print_movies
# def print_user_films(user_name)
#   user = User.find_by(name: user_name)
# end
puts "\n" + "End of the review!"
puts '*' * 50
puts "Your results brought to you by: Sarah Pai and Eric Laitman (The Greatest)"
