class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  def index
    @movies = Movie.all
  end

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end

    # # Never trust parameters from the scary internet, only allow the white list through.
    # def movie_params
    #   params.require(:movie).permit(:title, :description, :movie_length, :avatar, :youtube_url, :release_year, :user)
    # end
end
