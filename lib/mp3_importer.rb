class Song
  attr_accessor :title
 
  def self.new_by_filename(filename)
    song = self.new
    song.title = filename.split(" - ")[1]
    song
  end
 
end
 
class MP3Importer
  def import(list_of_filenames)
    list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
  end
end

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

kiki = Song.new("In My Feelings", "hip-hop")
hotline = Song.new("Hotline Bling", "pop")
 
drake.add_song(kiki)
drake.add_song(hotline)


