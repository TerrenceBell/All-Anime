class Review < ApplicationRecord
    belongs_to :user
    belongs_to :anime
    validates :title, presence: true
    validates :content, presence: true

    def self.search(search)
        if search          
            anime = Anime.find_by(name: search)
            if anime
                self.where(anime_id: anime)
            else
                @reviews = Review.all
            end
        else
            @reviews = Review.all
    end
end
   
end
