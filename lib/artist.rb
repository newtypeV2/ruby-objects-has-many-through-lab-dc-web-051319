
class Artist

  @@all_artists = []

    attr_reader :name,:genre

      def initialize(name)
        @name = name
        @@all_artists << self
      end

      def new_song(name,genre)
        song = Song.new(name,self,genre)
      end

      def songs
        Song.all.select do |song|
          song.artist == self
        end
      end

      def genres
        self.songs.collect do |song|
          song.genre
        end
      end

      def self.all
        @@all_artists

      end

end
