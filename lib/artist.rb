class Artist
  @@all = []
  attr_accessor :name
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    name = Song.new(name,self, genre)
  end

  def songs
    Song.all.select{|song|
      song.artist == self
    }
end

  def genres
    Song.all.select{|song|
      song.genre == self 

    }
end
end
