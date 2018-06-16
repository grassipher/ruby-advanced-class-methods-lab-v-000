class Song
  
  @@all = []
  attr_accessor :name, :artist_name
  
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
    return new_song.name
  end
  
  def self.create_by_name(name)
    song = self.create
    song.name = name
    return song
  end
  
  def self.find_by_name(name)
    @@all.find{|song| song.name == name}
  end
  
  def self.find_or_create_by_name(name)
    self.find_by_name(name) if self.find_by_name(name)
    self.create_by_name if !self.find_by_name(name)
  end
  
end
