class Actor < ActiveRecord::Base

  # Relationships

  has_many :actorizations
  has_many :movies, through: :actorizations

  def full_name
    "#{first_name} #{last_name}"
  end
end
