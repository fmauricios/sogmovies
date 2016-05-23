class Director < ActiveRecord::Base
  has_many :directorizations
  has_many :movies, through: :directorizations
end 
