
class Song

  @@all_songs = []

    attr_accessor :name
    attr_reader :artist, :genre

      def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@all_songs << self
      end

      def self.all
        @@all_songs
        end



end
