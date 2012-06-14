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
      if File.directory?(artist_dir)
        albums = Dir.entries(artist_dir)
        albums.each do |album|
          next if album == "." || album == ".."
          new_name = "#{artist} - #{album}"
          FileUtil.mv File.join(directory, artist, album), File.join(directory, new_name), force: true
        end
        FileUtils.remove_dir File.join(directory, artist), force: true
      end
    end
  end
end

dir = ARGV[0]
r = Rename.new(directory: dir)
r.run
