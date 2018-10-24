class Movie < ActiveRecord::Base
  has_many :reviews
  has_many :user_movies
  has_many :users, through: :reviews
  has_many :movie_genres
  has_many :genres, through: :movie_genres
end
