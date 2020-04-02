require 'pry'
class Song
    @@count = 0
    @@artists = []
    @@genres = []

    attr_reader :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @genre = genre
        @artist = artist

        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.count_type(output_hash, array_to_count)
        array_to_count.each do |item|
            if output_hash[item] == nil
                output_hash[item] = 1
            else
                output_hash[item] += 1
            end
        end
    end

    def self.genre_count
        genre_count = {}
        count_type(genre_count, @@genres)
        genre_count
    end

    def self.artist_count
        artist_count = {}
        count_type(artist_count, @@artists)
        artist_count
    end
end