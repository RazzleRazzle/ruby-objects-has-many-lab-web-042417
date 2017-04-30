require 'pry'
class Artist
  attr_accessor :name, :songs
    @@all = []
    @@song_count = nil

    def initialize(name)
      @name = name
      @songs = []
    end

    def add_song(song)
      @songs << song
      @@all << song
      song.artist = self
    end

    def add_song_by_name(song)
      jamz = Song.new(song)
      self.add_song(jamz)
    end

    def self.song_count
      @@song_count = @@all.count
      @@song_count
    end
end
