class Song
  attr_accessor :name
 
  def initialize(name)
    @name = name
  end
end
 
  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end
end

drake = Artist.new("Drake")
drake.add_song("In My Feelings")
drake.add_song("Hotline Bling")

kiki = Song.new("In My Feelings", "hip-hop")
hotline = Song.new("Hotline Bling", "pop")
 
drake.add_song(kiki)
drake.add_song(hotline)