class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  def index
    @movies = Movie.paginate(page: params[:page], per_page: 6).order(cached_votes_up: :desc)

    if params[:search]
      if params[:search] == "title"
        @movies = Movie.paginate(page: params[:page], per_page: 6).order("#{params[:search]}")
      elsif params[:search] == "release_year"
        @movies = Movie.paginate(page: params[:page], per_page: 6).order("#{params[:search]} desc")
      elsif params[:search] == "popularity"
        @movies = Movie.paginate(page: params[:page], per_page: 6).order(cached_votes_up: :desc)
      elsif params[:search] == "trending"
        @movies = Movie.paginate(page: params[:page], per_page: 10).order(cached_votes_up: :desc).limit(10)
      elsif params[:genre_id]
        @movies = Genre.find(params[:genre_id]).movies.paginate(page: params[:page], per_page: 6)
      end
    end
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
