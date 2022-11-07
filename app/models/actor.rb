class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters
  
    def full_name
      "#{self.first_name} #{self.last_name}"
    end
  
    def list_roles
      self.characters.count.times.map do |index|
        "#{self.characters[index].name} - #{self.shows[index].name}"
      end
    end
  
end