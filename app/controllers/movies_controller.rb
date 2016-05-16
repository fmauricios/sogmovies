class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  def index
    @movies = Movie.all
    @movies = Movie.paginate(page: params[:page], per_page: 6)
  end

  def show
  end
  
  def upvote 
    @movie = Movie.find(params[:id])
    @movie.upvote_by current_user
    redirect_to :back
  end  

  def downvote
    @movie = Movie.find(params[:id])
    @movie.downvote_by current_user
    redirect_to :back
  end

  private
    def set_movie
      @movie = Movie.find(params[:id])
    end

    # # Never trust parameters from the scary internet, only allow the white list through.
    # def movie_params
    #   params.require(:movie).permit(:title, :description, :movie_length, :avatar, :youtube_url, :release_year, :user)
    # end
end
