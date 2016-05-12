class Favorite < ActiveRecord::Base
  belongs_to :user
  belongs_to :movie

  validates_uniqueness_of :user, scope: :movie

end
