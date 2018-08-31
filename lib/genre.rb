class Genre
    attr_accessor :name

    @@all = [] 

    def initialize(name)
        @name = name
        
        @@all << self
    end

    def new_song(name, artist)
        songs.new(name, artist, self)
    end
    
    def songs
        Song.all.select do |song|
            song.genre == self
        end
    end

    def artists
        songs.collect do |song|
            song.artist
        end
    end
end