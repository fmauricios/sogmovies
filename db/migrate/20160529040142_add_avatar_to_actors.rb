class AddAvatarToActors < ActiveRecord::Migration
  def up
    add_attachment :actors, :avatar
  end

  def down
    remove_attachment :actors, :avatar
  end
end
