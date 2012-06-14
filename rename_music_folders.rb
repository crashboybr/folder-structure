require 'fileutils'

class Rename
  attr_accessor :directory

  def initialize(args = {})
    @directory = args[:directory]
  end

  def run
    artists = Dir.entries(directory)
    artists.each do |artist|
      next if artist == "." || artist == ".."
      artist_dir = File.join(directory, artist)
      if File.directory?(artist_dir)
        albums = Dir.entries(artist_dir)
        albums.each do |album|
          next if album == "." || album == ".."
          new_name = "#{artist} - #{album}"
          old_loc = File.join(directory, artist, album)
          new_loc = File.join(directory, new_name)
          FileUtils.mv old_loc, new_loc, force: true if File.directory?(old_loc)
        end
        FileUtils.remove_dir File.join(directory, artist), force: true
      end
    end
  end
end

dir = ARGV[0]
r = Rename.new(directory: dir)
r.run
