class Review < ApplicationRecord
    belongs_to :user
    belongs_to :anime
    validates :title, presence: true
    validates :content, presence: true
   
end
