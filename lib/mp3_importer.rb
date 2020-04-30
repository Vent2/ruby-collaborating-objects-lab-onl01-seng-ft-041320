# class MP3Importer
#   attr_accessor :path
#   @@all = []
#
#   def initialize(path)
#     @path = path
#   end
#
# end
class MP3Importer
    attr_accessor :path

    def initialize(path)
        @path = path
    end

    def files
#        puts "in files, path=#{@path}"
#        puts "wd=#{Dir.getwd.sub(/.*ruby(.*)/, '\1')}"
        filenames = Dir.chdir(@path) do | path |
#            puts path
            Dir.glob("*.mp3")
        end
        puts "names=#{filenames}"
        filenames
    end
end
