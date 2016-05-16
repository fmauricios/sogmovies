class Movie < ActiveRecord::Base
  extend WillPaginate

  acts_as_votable

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  validates :title, :description, presence: true
  validates :description, length: { maximum: 250 }

  belongs_to :user
end
