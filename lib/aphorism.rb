require "aphorism/version"

module Aphorism
  class Error < StandardError; end
  class Orator
    def say_hello
      puts "Hello World!"
    end
  end
end
