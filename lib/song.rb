class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def name=(name)
    @name = name
  end
  
  def name
    @name
  end
  
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    new_song = self.new
    new_song.save
    return new_song
  end
  
  def self.new_by_name(song)
    new_song = self.new
    new_song.name = song
    #new_song.save
    return new_song.name
  end
  
  def self.create_by_name(song)
    new_song = self.create
    new_song.name = song
    return new_song
  end
  
  def self.find_by_name(name)
    @@all.find(name)
  end
  
  def 
  
end
