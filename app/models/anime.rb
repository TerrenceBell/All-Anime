class Anime < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews
    scope :horror_genre, -> { where(genre: "Horror")}
    scope :action_adventure_genre, ->{ where(genre: "Action/Adventure")}
    scope :psycological_genre, -> { where(genre: "Psycological")}
    # scope :search, -> {find(:all, :conditions => [‘name LIKE ?’ , “%#{params[:search]}%”])}

    def self.search(search)
        if search
            show = Anime.find_by(name: search)
            if show 
                self.where(anime_id: show)
            else
                @animes = Anime.all 
            end
        else
            @animes = Anime.all
    end
end
    
end
