class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  def index
    @movies = Movie.all
    @movies = Movie.paginate(page: params[:page], per_page: 6)
  end

  def show
  end

  def favorite
    @movie = Movie.find(params[:id])
    favorite = Favorite.create(favorite: params[:favorite], user: current_user, movie: @movie)
    if favorite.valid?
      flash[:success] = "La película fue añadida con éxito a tus favoritos"
      redirect_to :back
    else
      flash[:danger] = "Tu sólo puedes darle favorito/no-favorito una sola vez"
      redirect_to :back
    end
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
