class Artist 
   attr_accessor :name, :songs
   @@all = []
  def initialize(name)
    @name = name
    @songs = []
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
  
  def self.find_or_create_by_name(name)
    artist_exists = self.all.find{ |artist| artist.name == name }
    artist_exists ? artist_exists :  self.create(name)
  end
  
  def print_songs
    @songs.each {|song| puts song.name}
  end
end 