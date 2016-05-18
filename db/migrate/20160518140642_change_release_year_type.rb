class ChangeReleaseYearType < ActiveRecord::Migration
  def up
    remove_column :movies, :release_year
    add_column :movies, :release_year, :datetime
  end

  def down
    remove_column :movies, :release_year
    add_column :movies, :release_year, :string
  end
end
