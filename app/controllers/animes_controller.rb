class AnimesController < ApplicationController
    def index
        animes = Anime.all 
        render json: animes
      end
    
      def show
        anime = Anime.find_by(id: params[:id])
        if anime
          render json: anime
        else
          render json: { error: "anime not found" }
        end
      end

      def create
       
        anime = Anime.create(anime_params)
        render json: anime
    end

    private
    
    def anime_params
        params.permit(:name, :img_url, :description, :author)
    end
end
