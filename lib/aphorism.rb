require "aphorism/version"
require "pry"

module Aphorism
  class Error < StandardError; end
  class Orator
    def say
      aphorism_path = File.join(__dir__, 'source/quotes.txt')
      aphorism = File.open(aphorism_path)
      binding.pry
      puts aphorism
    end
  end
end
