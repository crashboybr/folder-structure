class Rename
  attr_accessor :directory

  def initialize(args = {})
    @directory = args[:directory]
  end

  def run
    artists = Dir.entries(directory)
    artists.each do |artist|
      next if artist == "." || artist == ".."
      artist_dir = directory + "/" + artist
      puts "| #{artist}"
      if File.directory?(artist_dir)
        albums = Dir.entries(artist_dir)
        albums.each do |album|
          next if album == "." || album == ".."
          puts "|-- #{album}"
        end
      end
    end
  end
end
