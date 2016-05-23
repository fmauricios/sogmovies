class CreateMoviesActors < ActiveRecord::Migration
  def change
    create_table :actorizations do |t|
      t.integer :movie_id
      t.integer :actor_id
    end

    add_index :actorizations, :movie_id
    add_index :actorizations, :actor_id
  end

  def down
    drop_table :actorizations
  end
end
