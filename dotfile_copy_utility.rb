require 'fileutils'

class DotfileCopyUtility
  def initialize
    @usr_path = ENV['USR_PATH']
  end

  def process
    process_sub_dirs
    process_files
  end

  def process_sub_dirs
    sub_dirs = Dir.entries("./dist").select { |d|
      File.directory?("./dist/#{d}") && d[-1] != "."
    }

    require "pry"; binding.pry
  end

  def process_files
    files = Dir.entries('./dist').select { |f|
      File.file?("./dist/#{f}")
    }

    require "pry"; binding.pry
  end
end

DotfileCopyUtility.new.process
