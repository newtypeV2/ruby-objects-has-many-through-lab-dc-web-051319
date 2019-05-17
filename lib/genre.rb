
class Genre

  @@all_genres = []

    attr_accessor :name

    def initialize(name)
      @name = name
      @@all_genres << self

    end

    def songs
      Song.all.select do |songs|
        songs.genre == self
      end
    end

    def artists
      self.songs.collect do |song|
        song.artist
      end
    end

    def self.all
      @@all_genres
    end


end
