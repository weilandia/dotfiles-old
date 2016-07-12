class RepoToDiskUtility
  def self.copy
    process_sub_dirs
    process_files
  end

  class << self
    private
      def process_sub_dirs
        Dir.entries("./dist").each do |d|
          if File.directory?("./dist/#{d}") && d[-1] != "."
            %x(cp -r "./dist/#{d}" "#{ENV['HOME']}")
            puts "D Copied #{d} recursively to #{ENV['HOME']}."
          end
        end
      end

      def process_files
        Dir.entries('./dist').each do |f|
          if File.file?("./dist/#{f}")
            %x(cp "./dist/#{f}" "#{ENV['HOME']}")
            puts "F Copied #{f} to #{ENV['HOME']}."
          end
        end
      end
  end
end

RepoToDiskUtility.copy
