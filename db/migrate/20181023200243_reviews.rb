class Reviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :content
      t.belongs_to :movie
      t.belongs_to :user
    end
  end
end
