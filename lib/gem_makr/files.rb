require 'erb'
require 'pry'

module Gem_Makr
  def self.files gem_name, class_name

    begin
      File.open(File.join(gem_name, gem_name + '.gemspec'), 'w') { |file|
        gemspec = ERB.new(File.read(File.join(File.dirname(__FILE__), '..', 'templates', 'gemspec.erb')))
        file.write(gemspec.result(binding))
      }

      File.open(File.join(gem_name, 'bin', gem_name), 'w') { |file|
        bin = ERB.new(File.read(File.join(File.dirname(__FILE__), '..', 'templates', 'bin.erb')))
        file.write(bin.result(binding))
      }

      File.open(File.join(gem_name, 'lib', gem_name + '.rb'), 'w') { |file|
        lib = ERB.new(File.read(File.join(File.dirname(__FILE__), '..', 'templates', 'lib.erb')))
        file.write(lib.result(binding))
      }

      File.open(File.join(gem_name, 'lib', gem_name, 'application.rb'), 'w') { |file|
        app = ERB.new(File.read(File.join(File.dirname(__FILE__), '..', 'templates', 'application.rb.erb')))
        file.write(app.result(binding))
      }

      File.open(File.join(gem_name, 'lib', gem_name, 'options.rb'), 'w') { |file|
        options = ERB.new(File.read(File.join(File.dirname(__FILE__), '..', 'templates', 'options.rb.erb')))
        file.write(options.result(binding))
      }

      File.open(File.join(gem_name, 'lib', gem_name, 'version.rb'), 'w') { |file|
        version = ERB.new(File.read(File.join(File.dirname(__FILE__), '..', 'templates', 'version.rb.erb')))
        file.write(version.result(binding))
      }
    rescue Exception => e
      puts "We had an issue!"
      raise e.message
    end


    binding.pry

  end
end
