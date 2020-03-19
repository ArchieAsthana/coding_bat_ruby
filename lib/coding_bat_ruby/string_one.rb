# frozen_string_literal: true

module CodingBatRuby
  # Basic String problems no loops
  class StringOne
    # Given a string name, e.g. 'Bob',
    # return a greeting of the form 'Hello Bob!'.
    #
    # Examples
    #
    # hello_name('Bob') -> 'Hello Bob!'
    # hello_name('Alice') -> 'Hello Alice!'
    # hello_name('X') -> 'Hello X!'
    #
    # Returns string
    def hello_name(name)
      "Hello #{name}!"
    end

    # Given a string, if a length 2 substring appears at both its beginning and
    # end, return a string without the substring at the beginning, so 'HelloHe'
    # yields 'lloHe'. The substring may overlap with itself, so 'Hi' yields '.
    # Otherwise, return the original string unchanged.
    #
    # Examples
    #
    # without_two('HelloHe') -> 'lloHe'
    # without_two('HelloHi') -> 'HelloHi'
    # without_two('Hi') -> ''
    #
    # Returns String
    def without_two(str)
      return str if str.length < 2
      return '' if str.length == 2
      return str[2..] if str[0...2].eql? str[-2..]

      str
    end

    # Given two strings, append them together (known as 'concatenation') and
    # return the result. However, if the concatenation creates a double-char,
    # then omit one of the chars, so 'abc' and 'cat' yields 'abcat'.
    #
    # Examples
    #
    # con_cat('abc', 'cat') -> 'abcat'
    # con_cat('dog', 'cat') -> 'dogcat'
    # con_cat('abc', ') -> 'abc'
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
    # extra_front('Hello') -> 'HeHeHe'
    # extra_front('ab') -> 'ababab'
    # extra_front('H') -> 'HHH'
    #
    # Returns a String
    def extra_front(str)
      return str if str.empty?

      new_str = str.length < 2 ? str : str[0..1]
      new_str * 3
    end

    # Given a string, return true if the first 2 chars in the string also
    # appear at the end of the string, such as with 'edited'.
    #
    # Examples
    #
    # front_again('edited') -> true
    # front_again('edit') -> false
    # front_again('ed') -> true
    #
    # Returns a Boolean
    def front_again(str)
      str[0..1] == str[-2..]
    end

    # Given a string of even length, return a string made of the middle two
    # chars, so the string 'string' yields 'ri'. The string length will be
    # at least 2.
    #
    # Examples
    #
    # middle_two('string') -> 'ri'
    # middle_two('code') -> 'od'
    # middle_two('Practice') -> 'ct'
    #
    # Returns a String
    def middle_two(str)
      mid = str.length / 2
      str[mid - 1...mid + 1]
    end

    # Given a string and an int n, return a string made of the first and last
    # n chars from the string. The string length will be at least n.
    #
    # Examples
    #
    # n_twice('Hello', 2) -> 'Helo'
    # n_twice('Chocolate', 3) -> 'Choate'
    # n_twice('Chocolate', 1) -> 'Ce'
    #
    # Returns a String and Integer
    def n_twice(str, value_n)
      str[0...value_n] + str[str.length - value_n..]
    end

    # Given a string, return a version without the first and last char, so
    # 'Hello' yields 'ell'. The string length will be at least 2.
    #
    # Examples
    #
    # without_end('Hello') -> 'ell'
    # without_end('java') -> 'av'
    # without_end('coding') -> 'odin'
    #
    # Returns a String
    def without_end(str)
      str[1...str.length - 1]
    end

    # Given a string, if the string begins with 'red' or 'blue' return that
    # color string, otherwise return the empty string.
    #
    # Examples
    #
    # see_color('redxx') -> 'red'
    # see_color('xxred') -> ''
    # see_color('blueTimes') -> 'blue'
    #
    # Returns a String
    def see_color(str)
      return 'red' if str.start_with?('red')
      return 'blue' if str.start_with?('blue')

      ''
    end

    # Given a string, if the string begins with 'red' or 'blue' return that
    # color string, otherwise return the empty string.
    #
    # Examples
    #
    # see_color_with_nested_ternary('redxx') -> 'red'
    # see_color_with_nested_ternary('xxred') -> ''
    # see_color_with_nested_ternary('blueTimes') -> 'blue'
    #
    # Returns a String
    def see_color_with_nested_ternary(str)
      # rubocop:disable Style/NestedTernaryOperator
      str.start_with?('red') ? 'red' : str.start_with?('blue') ? 'blue' : ''
      # rubocop:enable Style/NestedTernaryOperator
    end

    # Given a string, return true if 'bad' appears starting at index 0 or 1 in
    # the string,such as with 'badxxx' or 'xbadxx' but not 'xxbadxx'.
    # The string may be any length, including 0. Note: use .equals() to compare
    # 2 strings.
    #
    # Examples
    #
    # has_bad?('badxx') -> true
    # has_bad?('xbadxx') -> true
    # has_bad?('xxbadxx') -> false
    #
    # Returns a Boolean
    # rubocop:disable Naming/PredicateName
    def has_bad?(str)
      # rubocop:enable Naming/PredicateName
      str[0...3].eql?('bad') || str[1...4].eql?('bad')
    end

    # The web is built with HTML strings like "<i>Yay</i>" which draws Yay as
    # italic text. In this example, the "i" tag makes <i> and </i> which
    # surround the word "Yay". Given tag and word strings, create the
    # HTML string with tags around the word, e.g. "<i>Yay</i>".
    #
    # Examples
    #
    # make_tags('i', 'Yay') -> '<i>Yay</i>'
    # make_tags('i', 'Hello') -> '<i>Hello</i>'
    # make_tags('cite', 'Yay') -> '<cite>Yay</cite>'
    #
    # Returns a String
    def make_tags(tag, word)
      "<#{tag}>#{word}</#{tag}>"
    end

    # Given a string, if the first or last chars are 'x', return the string
    # without Those 'x' chars, and otherwise return the string unchanged.
    #
    # Examples
    #
    # without_x('xHix') -> 'Hi'
    # without_x('xHi') -> 'Hi'
    # without_x('Hxix') -> 'Hxi'
    #
    # Returns a String
    def without_x(str)
      return str[1..-2] if str[0] == 'x' && str[-1] == 'x'
      return str[1..] if str[0] == 'x'
      return str[0..-2] if str[-1] == 'x'

      str
    end
  end
end
