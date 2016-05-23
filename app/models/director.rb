class Director < ActiveRecord::Base
  has_many :directorizations
  has_many :movies, through: :directorizations

  def full_name
    "#{first_name} #{last_name}"
  end
end 
