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
user_film_id = ApiCommunicator.create_user_film(user_id, film_id)


puts "End"
