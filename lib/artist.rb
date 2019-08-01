class Artist 
   attr_accessor :name 
   @@all = []
  def initialize(name)
    @name = name
    @songs = []
    save
  end 
  
  def save 
    @@all << self
  end
  def self.all 
    @all 
  end
  
  def add_song(name)
    @songs << name
  end 
end 