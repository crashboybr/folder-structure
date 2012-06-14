class Rename
  attr_accessor :directory

  def get_folders
    Dir.entries(directory)
  end
end
