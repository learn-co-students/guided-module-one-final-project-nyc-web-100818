class User < ActiveRecord::Base
has_many :user_films
has_many :films, through: :user_films

def user
 self.name
end

end
