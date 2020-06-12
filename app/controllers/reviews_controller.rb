class ReviewsController < ApplicationController
    
    
    def index
        @reviews = Review.all 
    end

    def new
        if @anime =  Anime.find_by_id(params[:anime_id])
        @review = @anime.reviews.build
        else
            @review = Review.new
        end
    end

    def create
        @review = Review.new(review_params)
        @review.user_id = current_user.id
        if @review.save
            redirect_to @review
        else
            render :new
        end
    end

    def show 
        @review = Review.find(params[:id])
    end

    def edit
        @review = Review.find(params[:id])
    end

    def update
        @review = Review.find(params[:id])
        @review.update(review_params)
        if @review.save 
            redirect_to @review 
        else
            render :edit
        end
    end

    def destroy
        @review = Review.find(params[:id])
        @review.destroy
        flash[:notice] = "Review deleted."
        redirect_to animes_path
      end
    
      private
    
      def review_params
        params.require(:review).permit(:title, :content, :rating, :user_id, :anime_id)
      end
end
