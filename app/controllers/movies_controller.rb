class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  def index
    @movies = Movie.paginate(page: params[:page], per_page: 9).order(cached_votes_up: :desc)

    if params[:search]
      if params[:search] == "title"
        @movies = Movie.paginate(page: params[:page], per_page: 9).order("#{params[:search]}")
      elsif params[:search] == "release_year"
        @movies = Movie.paginate(page: params[:page], per_page: 9).order("#{params[:search]} desc")
      elsif params[:search] == "popularity"
        @movies = Movie.paginate(page: params[:page], per_page: 9).order(cached_votes_up: :desc)
      elsif params[:search] == "trending"
        @movies = Movie.paginate(page: params[:page], per_page: 10).order(cached_votes_up: :desc).limit(10)
      elsif !params[:genre_id].empty?
        @movies = Genre.find(params[:genre_id]).movies.paginate(page: params[:page], per_page: 9)
      end
    end
  end

  def show
  end

  def upvote
    if current_user.nil?
      flash[:alert] = "Para dar una calificación primero debes iniciar sesión"
      redirect_to new_user_session_path
    else
      @movie = Movie.find(params[:id])
      @movie.upvote_by current_user
      redirect_to :back
    end
  end

  def downvote
    if current_user.nil?
      flash[:alert] = "Para dar una calificación primero debes iniciar sesión"
      redirect_to new_user_session_path
    else
      @movie = Movie.find(params[:id])
      @movie.downvote_by current_user
      redirect_to :back
    end
  end

  private
    def set_movie
      @movie = Movie.find(params[:id])
    end
end
