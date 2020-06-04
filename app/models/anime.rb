class Anime < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews
    scope :horror_genre, -> { where(genre: "Horror")}
    scope :action_adventure_genre, ->{ where(genre: "Action/Adventure")}
    scope :psycological_genre, -> { where(genre: "Psycological")}
end
