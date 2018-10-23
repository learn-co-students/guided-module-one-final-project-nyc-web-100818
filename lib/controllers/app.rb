class App

  def welcome
    puts "Welcome to movie phone whats your name?"
    user_name = gets.chomp
    if User.find_by name: user_name
      puts "Welcome back #{user_name}"
    else
      binding.pry
      User.create(name: user_name)
    end #end if else
    User.last
  end# end welcome

end
