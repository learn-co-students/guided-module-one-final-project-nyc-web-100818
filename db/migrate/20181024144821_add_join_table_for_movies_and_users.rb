class AddJoinTableForMoviesAndUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :user_movies do |t|
      t.belongs_to :movie
      t.belongs_to :user
    end
  end
end
