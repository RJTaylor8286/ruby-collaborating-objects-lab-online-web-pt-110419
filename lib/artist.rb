class Artist
  attr_accessor :name
 
  def initialize(name)
    @name = name
    @songs = []
  end
 
  def add_song(song)
    @songs << song
  end
 
  def songs
    @songs
  end
end

drake = Artist.new("Drake")
drake.add_song("In My Feelings")
drake.add_song("Hotline Bling")