class Song 
  attr_accessor :name, :artist
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def self.new_by_filename(file_name)
    new_file_name = file_name.split(" - ")
    new_file = self.new(file_name)
  end
end 