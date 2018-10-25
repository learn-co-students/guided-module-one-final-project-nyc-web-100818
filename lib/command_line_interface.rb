# class CommandLineInterface

def welcome_message
  puts "Hi, welcome to The Movie Database where all of your desires will come true!"
  # get_user
end


def get_user
  puts 'Please enter your name'
  name = gets.chomp # => ERIC
  
  # binding.pry
  # user = User.create(name) # => user.id: 1 name: eric
end


def create_user(name)
  # binding.pry
  User.create(:name => name)
end

# def find_movie
#   puts "What is your favorite movie?"
# end
def gets_user_input
  puts "What is your favorite movie?"
   movie = gets.chomp
end


def run
  welcome_message
  input = gets_user_input
  find_movie(input)
end

# def fav_movie
#   puts 'What is your favorite movie?'
#   fav_move = gets.chomp
#   user.fav_movie = fav_move
# end

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
