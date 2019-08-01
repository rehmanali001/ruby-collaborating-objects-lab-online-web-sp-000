class Artist 
   attr_accessor :name, :songs
   @@all = []
  def initialize(name)
    @name = name
    @songs = []
    save
  end 
  
  def self.all 
    @all 
  end
  
  def add_song(name)
    @songs << name
  end 
  
  def save 
    @@all << self
  end
end 