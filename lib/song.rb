
require 'pry'

class Song

    attr_reader :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []
    #@@genre_count = {
    #    "pop" => 9,
     #   "rock" => 10
    #}

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        # @@count is counting the number of songs created
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

     
    def self.count
        # counts & returns total number of songs created (?by an artist?)
        @@count
    end

    def self.artists
        # returns an array of all the artists who've created songs for this class (no repeats)
        @@artists.uniq
    end

    def self.genres
        # returns an array of all the genre's that exist in this class (no repeats)
        @@genres.uniq
    end

    def self.genre_count
        # returns a hash of genres and the number of songs that have those genres
        # Should not be permanent so resets every time
        # AND @@ removed to make genre_count local
        genre_count = {}
        @@genres.each do |genre|

            if !genre_count[genre]
                genre_count[genre] = 1
            else
                genre_count[genre] += 1
            end
        end
        genre_count
    end


    def self.artist_count
        # Song .artist_count is a class method that returns a hash of artists and the number of songs that have those artists

        artist_count = {}

        @@artists.each do |artist|
            if !artist_count[artist]
                artist_count[artist] = 1
            else
                artist_count[artist] += 1
            end
        end
        artist_count
    end
end




