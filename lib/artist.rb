require 'pry'
class Artist

    attr_reader :name

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name

        @@all << self
    end

    def new_song(name, genre_instance)
        Song.new(name, self, genre_instance)
    end

    def songs
        Song.all.select do |song_instance|
            song_instance.artist == self
        end
    end

    def genres
        self.songs.collect do |song_instance|
            song_instance.genre
        end
    end

end
