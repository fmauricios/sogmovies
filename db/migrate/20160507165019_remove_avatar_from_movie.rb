class RemoveAvatarFromMovie < ActiveRecord::Migration
  def change
    remove_column :movies, :avatar
  end
end
