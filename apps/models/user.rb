class User < ActiveRecord::Base
has_many :user_films
has_many :films, through: :user_films



  def print_movies
    self.films.each do |film|
      # puts film.title
      # puts film.description

      puts "\n" + "Thank you for choosing #{film.title}!" + "\n" + "\n" + "Now check out the review:" + "\n" "#{film.description}"
    end
  end


end
