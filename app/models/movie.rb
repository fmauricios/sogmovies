class Movie < ActiveRecord::Base
  extend WillPaginate
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  validates :title, :description, presence: true

  belongs_to :user
  has_many :favorites

  def thumbs_up_total
    self.favorites.where(favorite: true).size
  end

  def thumbs_down_total
    self.favorites.where(favorite: false).size
  end
end
