require 'pry'

class Song

    @@count = 0
    @@genres = []
    @@artists = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres.push(@genre)
        @@artists.push(@artist)
        #binding.pry
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq!
    end

    def self.artists
        # return uniq! array
        @@artists.uniq!
    end

    def self.genre_count
        genre_hash = {}
        @@genres.each do |entry|
            if !genre_hash[entry]
                #binding.pry
                genre_hash[entry] = 1
            else 
                genre_hash[entry] += 1
            end
        end
        genre_hash
    end

    def self.artist_count
        artist_hash = {}
        @@artists.each do |entry|
            if !artist_hash[entry]
                #binding.pry
                artist_hash[entry] = 1
            else 
                artist_hash[entry] += 1
            end
        end
        artist_hash
    end

end