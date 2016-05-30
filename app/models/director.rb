class Director < ActiveRecord::Base

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  has_many :directorizations
  has_many :movies, through: :directorizations

  def full_name
    "#{first_name} #{last_name}"
  end
end
