# frozen_string_literal: true

require 'aphorism/version'

module Aphorism
  class Error < StandardError; end

  # displays aphorisms
  class Orator
    def say
      aphorisms_path = File.join(__dir__, 'content/aphorisms.txt')
      aphorisms = IO.read(aphorisms_path).split("\n%\n")
      puts aphorisms.sample
    end
  end
end
