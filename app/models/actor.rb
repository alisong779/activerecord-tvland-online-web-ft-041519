class Actor < ActiveRecord::Base
  has_many :characters 
  has_many :shows, through: :characters
  
  def full_name 
    name = "#{self.first_name} #{self.last_name}"
  end 

  def list_roles
    c_names = self.characters.collect {|character| character.name}.to_s 
    s_names = self.shows.collect {|shows| shows.name}.to_s
    return c_names + "- #{s_names}"
  end 

end

