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
    def hello_name(name)
      "Hello #{name}!"
    end
  end
end
