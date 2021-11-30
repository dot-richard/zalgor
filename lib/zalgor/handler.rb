# frozen_string_literal: true

require_relative 'combining_chars'

module Zalgor
  class << self
    ##
    # The default options to transform the text.
    #
    DEFAULT_OPTIONS = {
      down: 2,
      mid: 2,
      up: 2,
      random: false
    }.freeze

    ##
    # Transform a string to zalgo string.
    #
    def transform(string, **options)
      down   = options[:down]   || DEFAULT_OPTIONS[:down]
      mid    = options[:mid]    || DEFAULT_OPTIONS[:mid]
      up     = options[:up]     || DEFAULT_OPTIONS[:up]
      random = options[:random] || DEFAULT_OPTIONS[:random]

      '' +
        string.chars.map do |char|
          set_combining_chars('',       down, COMBINING_CHARS[:down], random) +
            set_combining_chars(char,   mid,  COMBINING_CHARS[:mid],  random) +
            set_combining_chars('',     up,   COMBINING_CHARS[:up],   random)
        end.join
    end

    ##
    # Purify a zalgo String to normale string.
    #
    def purify(string)
      combining_chars = (COMBINING_CHARS[:down] + COMBINING_CHARS[:mid] + COMBINING_CHARS[:up])
      string.chars.map do |char|
        next if combining_chars.include? char

        char
      end.join
    end

    private

    def set_combining_chars(char, num, combining_chars, random)
      num = rand(num).to_i if random
      num.times do
        char += combining_chars.sample
      end
      char
    end
  end
end
