class Song 
  attr_accessor :name, :artist, :genre 
  attr_reader :name, :artist, :genre
  
  @@count = 0 
  @@artists = [] 
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre
    @@count += 1 
    @@genres << genre
    @@artists << artist
  end 
  
  def self.count
    @@count 
  end
  
  def self.genres
    @@genres.uniq 
  end 
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    Hash[@@genres.group_by{ |v| v }.flat_map{ |k, v| [k => v.size] }]
  end
  
end 
