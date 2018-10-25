class User < ActiveRecord::Base
has_many :user_films
has_many :films, through: :user_films



  def print_movies

    self.films.each do |film|
      puts film.title
      puts film.description
    end
  # UserFilm.find_by(id: self.id)
  # binding.pry
  end


end
