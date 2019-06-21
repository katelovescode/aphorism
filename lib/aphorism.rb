require "aphorism/version"

module Aphorism
  class Error < StandardError; end
  class Orator
    def say_hello
      echo "Hello World!"
    end
  end
end
