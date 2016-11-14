class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.references :genre, foreign_key: true
      t.references :movie, foreign_key: true

      t.timestamps
    end
  end
end
