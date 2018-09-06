class Song

    attr_reader :name, :genre
    attr_accessor :artist

    @@all = []

    def self.all
        @@all
    end

    def initialize(name, artist_instance, genre_instance)
        @name = name
        @genre = genre_instance
        @artist = artist_instance

        @@all << self
    end

end