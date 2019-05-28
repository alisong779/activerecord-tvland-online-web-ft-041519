class Actor < ActiveRecord::Base
  has_many :characters 
  has_many :shows, through: :characters
  
  def full_name 
    name = "#{self.first_name} #{self.last_name}"
  end 

  def list_roles
    c_names = self.characters.map {|character| character.name}
    s_names = self.shows.map {|shows| shows.name}
    "#{c_names} - #{s_names}"
  end 

end

