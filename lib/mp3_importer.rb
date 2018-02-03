class MP3Importer
  attr_accessor :path
  def initialize(file_path)
    @path = file_path
  end

  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect do |f|
      f.gsub("#{path}/", "")
    end
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
    end
    #binding.pry
end
