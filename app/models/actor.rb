class Actor < ActiveRecord::Base
  has_many :songs 
  has_many :genres, through: :songs 
end
end