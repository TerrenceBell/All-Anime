
class AnimesController < ApplicationController

    def index
        #binding.pry
        
        @animes = Anime.all
        
    end

    def show 
        @anime = Anime.find(params[:id])
    end

    def new 
        @anime = Anime.new 
    end

    def create
        @anime = Anime.new(anime_params)
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
    
      def anime_params
        params.require(:anime).permit(:name, :genre, :seasons, :watch_options, :description, :completed, :start_year, :end_year)
      end
end
