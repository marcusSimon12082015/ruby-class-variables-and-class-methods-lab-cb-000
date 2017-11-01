class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  @@artist_count = {}
  @@genre_count = {}
  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    if !@@artists.include?(artist)
      @@artists << artist
    end
    if !@@genres.include?(genre)
      @@genre << genre
    end
    if @@artist_count.key?(artist)
      @@artist_count[artist] =+1
    else
      @@artist_count[artist] = 0
    end
    if @@genre_count.key?(genre)
      @@genre_count[genre] =+1
    else
      @@genre_count[genre] = 0
    end
  end
end
