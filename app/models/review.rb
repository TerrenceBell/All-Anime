class Review < ApplicationRecord
    belongs_to :user
    belongs_to :anime
    validates :title, presence: true
   
end
