# frozen_string_literal: true

require_relative 'zalgo'

class String
  ##
  # Transform a String into zalgo String.
  # @return [String]
  #
  def to_zalgo(**options)
    Zalgor.transform(self, **options)
  end
end
