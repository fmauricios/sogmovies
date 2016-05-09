class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.string :movie_length
      t.string :avatar
      t.string :youtube_url
      t.string :release_year

      t.timestamps null: false
    end
  end
end
