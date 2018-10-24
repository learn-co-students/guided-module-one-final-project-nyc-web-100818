class User < ActiveRecord::Base
  has_many :reviews
  has_many :movies, through: :reviews 
  has_many :movies, through: :user_movies 
  def movie_list_count
    self.reviews.select { |review| review.movie_id }.uniq.count 
  end
end
