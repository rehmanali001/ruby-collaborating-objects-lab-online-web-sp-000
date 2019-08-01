class Artist 
   attr_accessor :name 
   @@all = []
  def initialize(name)
    @name = name
    save
  end 
  
  def save 
    @@all << self
  end
  def self.all 
    @all 
  end
  
  def add_song(name)
    @@all << name
   end 
end 