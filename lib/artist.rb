require 'pry'
class Artist
  attr_accessor :name, :songs

  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  #binding.pry
  def add_song(song_name)
    @songs << song_name
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    artist = self.all.find do |instance|
      instance.name == name
    end
    artist == nil ? self.new(name) : artist
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
# binding.pry
end
