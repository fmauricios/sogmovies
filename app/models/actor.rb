class Actor < ActiveRecord::Base
  
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  # Relationships

  has_many :actorizations
  has_many :movies, through: :actorizations

  def full_name
    "#{first_name} #{last_name}"
  end
end
