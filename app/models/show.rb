class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network
  
    def actors_list 
      self.actors.count.times.map do |index|
        "#{self.actors[index].first_name} #{self.actors[index].last_name}"
      end
    end
  end