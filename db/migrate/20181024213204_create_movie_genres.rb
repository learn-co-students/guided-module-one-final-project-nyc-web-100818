class CreateMovieGenres < ActiveRecord::Migration[5.0]
  def change
    create_table :movie_genres do |t|
      t.belongs_to :movie
      t.belongs_to :genre
    end

    create_table :genres do |t|
      t.integer :api_id
      t.string :name 
    end
  end
end
