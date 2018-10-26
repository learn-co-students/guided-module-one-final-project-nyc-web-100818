
def welcome_message
  puts "\n" + "\n" + "Hi, welcome to The Movie Review Database." + "\n" + "\n" + "Here, you will find a review for any movie of your choice."
  # get_user
end


def get_user
  puts "\n" + "Type in your first name to get started so we know you're real."
  name = gets.chomp # => ERIC
  create_user(name)
end


def create_user(name)
  User.create(:name => name)
  # User.save
end

def gets_user_input
  puts "Now, choose the movie you would like to know more about.\n"
   movie = gets.chomp
end


# def create_film(title, overview)
#   Film.create(title: title, description: overview)
# end

def bye_dude
  puts "BYE #{user.name}"
  get_user
end

def find_movie_response
  response = gets.chomp
  get_movies(response)
end
