class User < ActiveRecord::Base
has_many :user_films
has_many :films, through: :users_films

def user
 self.name
end

end
