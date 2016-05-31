class Movie < ActiveRecord::Base
  extend WillPaginate

  acts_as_votable

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  # Validations

  validates :title, :description, presence: true
  validates :description, length: { maximum: 500 }

  # Relationships

  belongs_to :user
  belongs_to :movie_type

  has_many :categorizations
  has_many :genres, through: :categorizations

  has_many :directorizations
  has_many :directors, through: :directorizations

  has_many :actorizations
  has_many :actors, through: :actorizations
end
