class CreateAnimes < ActiveRecord::Migration[6.0]
  def change
    create_table :animes do |t|
      t.string :name
      t.string :genre
      t.integer :seasons
      t.string :watch_options
      t.text :description
      t.boolean :completed
      t.integer :start_year
      t.integer :end_year

      t.timestamps
    end
  end
end
