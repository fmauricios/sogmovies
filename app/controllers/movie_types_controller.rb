class MovieTypesController < ApplicationController

  def series
    @serie_type = MovieType.find_by(name: "serie")
  end

  def movies
    @movie_type = MovieType.find_by(name: "movie")
  end

  def animes
    @anime_type = MovieType.find_by(name: "anime")
  end

end
