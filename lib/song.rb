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
  
  def self.new_by_name(name)
    song = self.new
    song.name = name
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
    if self.find_by_name(name)
      self.find_by_name(name)
    else
      self.create_by_name(name)  
    end
  end
  
  def self.alphabetical
    self.all.sort do |a,b|
      a <=> b
    end
    return @@all
  end
  
end
