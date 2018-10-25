# class CommandLineInterface

def welcome_message
  puts "Hi, welcome to The Movie Database. \nIf an overview of your favorite movie is what you came for, \nyou are in the right place."
  # get_user
end


def get_user
  
  puts "\nFirst, we want to get to know you. Please tell us your first name."
  name = gets.chomp # => ERIC
  
  # binding.pry
  # user = User.create(name) # => user.id: 1 name: eric
end


def create_user(name)
  User.create(:name => name)
end

def gets_user_input
  puts "If you could watch any movie in the galaxy, what movie would you choose?\n"
   movie = gets.chomp
end


def create_film(title, overview)
  Film.create(title: title, description: overview)
end

def bye_dude
  puts "BYE #{user.name}"
  get_user
end

def find_movie_response
  response = gets.chomp
  get_movies(response)
end

def get_movies(response)
  puts response
end
