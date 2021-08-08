class Artist
    attr_accessor :name
    def initialize(name)
        @name = name
        @songs = []
    end

    def songs
        Song.all.select {|song| song.artist.name == @name}
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(name)
        new_song = Song.new(name)
        new_song.artist = self
    end

    def self.song_count
        Song.all.collect {|song| song.artist.name == @name}.length
    end

end