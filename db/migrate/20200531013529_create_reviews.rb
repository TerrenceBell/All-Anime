class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :rating
      t.string :title
      t.text :content
      t.integer :anime_id
      t.integer :user_id

      t.timestamps
    end
  end
end
