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
    #
    # without2("HelloHe") -> 'lloHe'
    # without2("HelloHi") -> 'HelloHi'
    # without2("Hi") -> ''
    #
    # Returns String
    def without_two(str)
      return str if str.length < 2
      return '' if str.length == 2
      return str[2..] if str[0...2].eql? str[-2..]

      str
    end

    # Given two strings, append them together (known as "concatenation") and
    # return the result. However, if the concatenation creates a double-char,
    # then omit one of the chars, so "abc" and "cat" yields "abcat".
    #
    # Examples
    #
    # con_cat("abc", "cat") -> "abcat"
    # con_cat("dog", "cat") -> "dogcat"
    # con_cat("abc", "") -> "abc"
    #
    # Returns a String
    def con_cat(value_a, value_b)
      return value_a + value_b if value_a.empty? || value_b.empty?
      return value_a[0...-1] + value_b if value_a[-1] == value_b[0]

      value_a + value_b
    end

    # Given a string, return a new string made of 3 copies of the first 2 chars
    # of the original string. The string may be any length. If there are fewer
    # than 2 chars, use whatever is there.
    #
    # Examples
    #
    # extra_front("Hello") -> "HeHeHe"
    # extra_front("ab") -> "ababab"
    # extra_front("H") -> "HHH"
    #
    # Returns a String
    def extra_front(str)
      return str if str.empty?

      new_str = str.length < 2 ? str : str[0..1]
      new_str * 3
    end

    # Given a string, return true if the first 2 chars in the string also
    # appear at the end of the string, such as with "edited".
    #
    # Examples
    #
    # frontAgain("edited") -> true
    # frontAgain("edit") -> false
    # frontAgain("ed") -> true
    #
    # Returns a Boolean
    def front_again(str)
      str[0..1] == str[-2..]
    end
  end
end
