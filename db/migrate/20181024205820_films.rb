class Films < ActiveRecord::Migration[5.0]
  def change
    create_table :films do |t|
      t.string :title
      t.text :description
    end
  end
end
