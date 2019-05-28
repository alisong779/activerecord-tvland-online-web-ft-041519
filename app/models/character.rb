class Character < ActiveRecord::Base
  has_many :characters 
  has_many :shows, through: :characters
  
  def say_that_thing_you_say
    self.catchphrase
  end 
end