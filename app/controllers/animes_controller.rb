class AnimesController < ApplicationController

    def index
        @animes = Anime.all 
    end

    def show 
        @anime = Anime.find(params[:id])
    end

    def new 
        @anime = Anime.new 
    end

    def create
        @Anime = Anime.new(anime_params)
        if @anime.save
            redirect_to @anime
        else
            render :new
        end
    end

    def edit
        @anime = Anime.find(params[:id])
    end

    def update
        @anime = Anime.find(params[:id])
        @anime.update(anime_params)
        if @anime.save 
            redirect_to @anime
        else
            render :edit
        end
    end

    def destroy
        @anime = Anime.find(params[:id])
        @anime.destroy
        flash[:notice] = "The show has been deleted."
        redirect_to animes_path
      end
    
      private
    
      def review_params
        params.require(:anime).permit(:rating, :title, :content, :anime_id, :user_id)
      end
end
