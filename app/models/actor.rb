class Actor < ActiveRecord::Base
  has_many :characters 
  has_many :genres, through: :songs 
end
end