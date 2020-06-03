class Review < ApplicationRecord
    belongs_to :user
    belongs_to :anime

    def index
    end
    
    def new
        @review = Review.new 
    end

    def create

    end

    private

end
