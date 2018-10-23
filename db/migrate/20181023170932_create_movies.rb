class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    #you tell ActiveRecord what to change
    create_table :movies do |t|
      t.string :title
      t.string :genre
      t.text :description
      t.integer :run_time
      t.datetime :release_date
    end
  end
end
