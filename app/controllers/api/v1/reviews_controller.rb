module Api
  module V1
    class ReviewsController < ApplicationController
    before_action :set_movie_and_review, only: [:show, :edit, :update, :destroy]


  def index
    @movie = Movie.find(params[:movie_id])
    @reviews = @movie.reviews
    render json:  @reviews, each_serializer: ReviewsSerializer
  end


  def show
    render json: @review, serializer: ReviewsSerializer
  end


  def create
    @movie = Movie.find(params[:movie_id])
    @review = @movie.reviews.create(review_params)

    if @review.save
      @movie.save
      render json: @review, status: :created, location: @review, serializer: ReviewsSerializer
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end


  def update
    @review.update(review_params)
    @movie.save
    if @review.update(review_params)
      render json: @review, serializer: ReviewsSerializer
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end


  def destroy
    @review.destroy
    @movie.save
    head :no_content
  end

  private

  def set_movie_and_review
    @movie = Movie.find(params[:movie_id])
    @review = @movie.reviews.find_by(id: params[:id])
  end

    def review_params
      params.require(:review).permit(:body, :movie_id)
    end
  end
 end
end
