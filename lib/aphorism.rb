require "aphorism/version"
require "pry"

module Aphorism
  class Error < StandardError; end
  class Orator
    def say
      aphorisms_path = File.join(__dir__, 'source/quotes.txt')
      aphorisms = IO.read(aphorisms_path).split("\n%\n")
      puts aphorisms.sample
    end
  end
end
