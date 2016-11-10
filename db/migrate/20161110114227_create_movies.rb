class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :director
      t.integer :duration
      t.string :genre
      t.string :summary

      t.timestamps
    end
  end
end
