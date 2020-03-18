# frozen_string_literal: true

module CodingBatRuby
  # Basic String problems no loops
  class StringOne
    # Given a string name, e.g. "Bob",
    # return a greeting of the form "Hello Bob!".
    #
    # Examples
    #
    # helloName("Bob") -> "Hello Bob!"
    # helloName("Alice") -> "Hello Alice!"
    # helloName("X") -> "Hello X!"
    #
    # Returns string
    def hello_name(name)
      "Hello #{name}!"
    end

    # Given a string, if a length 2 substring appears at both its beginning and
    # end, return a string without the substring at the beginning, so "HelloHe"
    # yields "lloHe". The substring may overlap with itself, so "Hi" yields "".
    # Otherwise, return the original string unchanged.
    #
    # Examples
    # without2("HelloHe") -> 'lloHe'
    # without2("HelloHi") -> 'HelloHi'
    # without2("Hi") -> ''
    #
    # Returns String
    def without_two(str)
      return str if str.length < 2
      return '' if str.length == 2
      return str[2..] if str[0, 2].eql? str[-2..]

      str
    end
  end
end
