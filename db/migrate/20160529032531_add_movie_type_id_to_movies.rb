class AddMovieTypeIdToMovies < ActiveRecord::Migration
  def change
    add_reference :movies, :movie_type, index: true, foreign_key: true
  end
end
