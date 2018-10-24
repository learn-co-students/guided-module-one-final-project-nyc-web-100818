def welcome_message
  puts "Hi, welcome to The Movie Database where all of your desires will come true!"
end

def find_movie
  puts "What movie title would you like to search for?"
  gets.chomp.downcase
end
