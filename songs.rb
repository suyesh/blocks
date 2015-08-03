class Song
attr_reader :name, :artist, :duration
  def initialize(name,artist,duration)
    @name = name
    @artist = artist
    @duration = duration
  end

  def play
    puts "playing'#{name}' by #{artist} (#{duration} mins)...."
  end
end

class Playlist
  include Enumerable

  def each(&block)

  end
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_songs(song)
    @songs << song
  end

  def each_songs
    @songs.each {|song| yield song}
  end
end

song1 = Song.new("Toxicity", "System of a Down", 2)
song2 = Song.new("Like a Stone", "Audioslave", 3)
song3 = Song.new("VCR", "The XX", 4)

playlist1 = Playlist.new("Rock")
playlist1.add_songs(song1)
playlist1.add_songs(song2)
playlist1.add_songs(song3)

playlist1.each_songs do |song|
  puts song.play
end
