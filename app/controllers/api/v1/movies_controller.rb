module Api
  module V1
    class MoviesController < ApplicationController
      skip_before_filter :verify_authenticity_token
      respond_to :json

      def index
        @movies = Movie.all
        render json: @movies, each_serializer: MoviesSerializer
      end

      def show
        @movie = Movie.find(params[:id])
        render json: @movie, serializer: MoviesSerializer

      end

      def create
        @movie = Movie.new(movie_params)
        if @movie.save
          respond_to do |format|
            format.json {  render json: @movie, serializer: MoviesSerializer  }
          end
        end
      end

      def update
        @movie = Movie.find(params[:id])
        if @movie.update(movie_params)
          respond_to do |format|
            format.json { render json: @movie, serializer: MoviesSerializer  }
          end
        end
      end

      def destroy
        respond_with Movie.destroy(params[:id])
      end

      private
        def movie_params
          params.require(:movie).permit(:title, :plot)
        end
    end
  end
end
