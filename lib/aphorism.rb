# frozen_string_literal: true

require 'aphorism/version'

module Aphorism
  class Error < StandardError; end

  # displays aphorisms
  class Orator
    def say
      aphorisms = internal_aphorisms + custom_aphorisms
      puts aphorisms.sample
    end

    private

    def internal_aphorisms
      aphorisms_path = File.join(__dir__, 'content/aphorisms.txt')
      IO.read(aphorisms_path).split("\n%\n")
    end

    def custom_aphorisms
      custom_path = File.join(Dir.home, '.aphorism')
      return unless File.directory?(custom_path)
      custom_files = Dir.entries(custom_path) - ['.', '..']
      custom_aphorisms = []
      custom_files.each do |file|
        custom_aphorisms += IO.read(File.join(custom_path, file)).split("\n%\n")
      end
      custom_aphorisms
    end
  end
end
