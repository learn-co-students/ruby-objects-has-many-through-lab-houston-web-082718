class Genre

    attr_reader :name

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name

        @@all << self
    end

    def new_song(name, artist_instance)
        Song.new(name, artist_instance, self)
    end

    def songs
        Song.all.select do |song_instance|
            song_instance.genre == self
        end
    end

    def artists
        songs.collect do |song_instance|
            song_instance.artist
        end
    end

end