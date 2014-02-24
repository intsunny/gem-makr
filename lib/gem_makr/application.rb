require 'gem_makr/directories.rb'
require 'gem_makr/files.rb'

module Gem_Makr
  class Application
    def run (arguments)

      #FIXME: This is grade A stupid
      unless ARGV.length == 2
        puts "Usage: gem-makr binary_name class_name"
      end

      # Create all the directories needed
      Gem_Makr::directories ARGV[0]

      # Create all the files needed
      Gem_Makr::files ARGV[0], ARGV[1]

      exit 0
    end
  end
end
