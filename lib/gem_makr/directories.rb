module Gem_Makr
  def self.directories gem_name

    begin
      Dir.mkdir(gem_name)
      Dir.mkdir(File.join(gem_name, 'bin'))
      Dir.mkdir(File.join(gem_name, 'lib'))
      Dir.mkdir(File.join(gem_name, 'lib', gem_name))
    rescue Exception => e
      puts "We had an issue!"
      raise e.message
    end

  end
end
