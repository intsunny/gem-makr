require 'erb'
require 'pry'

module Gem_Makr
  def self.files gem_name, class_name

    begin
      File.open(File.join(gem_name, gem_name + '.gemspec'), 'w') { |file|
        gemspec = ERB.new(File.read(File.join(File.dirname(__FILE__), '..', 'templates', 'gemspec.erb')))
        file.write(gemspec.result(binding))
      }
    rescue Exception => e
      puts "We had an issue!"
      raise e.message
    end


    binding.pry

  end
end
