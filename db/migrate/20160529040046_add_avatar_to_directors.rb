class AddAvatarToDirectors < ActiveRecord::Migration
  def up
    add_attachment :directors, :avatar
  end

  def down
    remove_attachment :directors, :avatar
  end
end
