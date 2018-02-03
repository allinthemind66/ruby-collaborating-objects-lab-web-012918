class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
  end

  def artist=(artist)
    @artist = artist
  end

  def self.new_by_filename(file_name)

    split_file_name = file_name.split(" - ")
    artist_name = split_file_name[0]
    song_name = split_file_name[1]
    # binding.pry
    song = self.new(song_name)
    artist = Artist.find_or_create_by_name(artist_name)
    song.artist = artist
    artist.songs << song
    # Artist.all << song


# binding.pry
  song
  end

end
