class Rename
  attr_accessor :directory

  def initialize(args = {})
    @directory = args[:directory]
  end

  def get_folders
    Dir.entries(directory)
  end

  def run
    artists = self.get_folders
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
