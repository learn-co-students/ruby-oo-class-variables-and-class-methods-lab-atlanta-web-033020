
require 'pry'

class Song

    attr_reader :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist

        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

     
    def self.count
        # counts & returns total number of songs created by an artist
        @@count
    end

    def self.artists
        # returns an array of all the artists who've created songs for this class
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        # returns a hash of genres and the number of songs that have those genres
        
    end

end




