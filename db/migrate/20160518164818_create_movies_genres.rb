class CreateMoviesGenres < ActiveRecord::Migration
  def up 
    create_table :categorizations, id: false do |t|
      t.integer :movie_id
      t.integer :genre_id
    end

    add_index :categorizations, :movie_id
    add_index :categorizations, :genre_id
  end

  def down
    drop_table :categorizations
  end
end
