class User < ActiveRecord::Base
  has_many :reviews
  has_many :user_movies
  has_many :movies, through: :reviews 
  has_many :movies, through: :user_movies 
end
