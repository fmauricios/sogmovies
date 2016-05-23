class CreateMoviesAndDirectors < ActiveRecord::Migration
  def up
    create_table :directorizations do |t|
      t.integer :movie_id
      t.integer :director_id
    end

    add_index :directorizations, :movie_id
    add_index :directorizations, :director_id
  end

  def down
    drop_table :directorizations
  end
end
