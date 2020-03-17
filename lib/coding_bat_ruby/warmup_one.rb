# frozen_string_literal: true

module CodingBatRuby
  # Simple warmup problems to get started!
  class WarmupOne
    # The parameter weekday is true if it is a weekday, and the parameter
    # vacation is true if we are on vacation. We sleep in if it is not a
    # weekday or we're on vacation. Return true if we sleep in.
    #
    # weekday - a boolean if it is weekday
    # vacation - a boolean if it is a vacation
    #
    # Examples
    # sleep_in(false, false) -> true
    # sleep_in(true, false) -> false
    # sleep_in(false, true) -> true
    #
    # Returns a boolean
    def sleep_in(weekday, vacation)
      !weekday || vacation
    end

    # We have two monkeys, a and b, and the parameters aSmile and bSmile
    # indicate if each is smiling. We are in trouble if they are both
    # smiling or if neither of them is smiling.
    # Return true if we are in trouble.
    #
    # a_smile - returns a boolean value if a_smile
    # b_smile - returns a boolean value if b_smile
    #
    # Examples
    #
    # monkey_trouble(true, true) -> true
    # monkey_trouble(false, false) -> true
    # monkey_trouble(true, false) -> false
    #
    # Returns a boolean
    def monkey_trouble(a_smile, b_smile)
      a_smile == b_smile || !a_smile == !b_smile
    end

    # Given two int values, return their sum.
    # Unless the two values are the same, then return double their sum.
    #
    # Examples
    #
    # sum_double(1, 2) -> 3
    # sum_double(3, 2) -> 5
    # sum_double(2, 2) -> 8
    #
    # Returns int.
    def sum_double(val_a, val_b)
      # (a == b) ? 2 * (a + b) : (a + b)
      (val_a + val_b) * (val_a == val_b ? 2 : 1)
    end

    # Given 2 int values, return whichever value is nearest to the value 10,
    # or return 0 in the event of a tie. Note that Math.abs(n) returns
    # the absolute value of a number.
    #
    # Examples
    #
    # close_ten(8, 13) -> 8
    # close_ten(13, 8) -> 8
    # close_ten(13, 7) -> 0
    #
    # Returns an int
    def close_ten(val_a, val_b)
      distance_a = (val_a - 10).abs
      distance_b = (val_b - 10).abs

      return 0 if distance_a == distance_b

      distance_a > distance_b ? val_b : val_a
    end

    # Given an int n, return true if it is within 10 of 100 or 200.
    # Note: Math.abs(num) computes the absolute value of a number.
    #
    # Examples
    #
    # nearHundred(93) -> true
    # nearHundred(90) -> true
    # nearHundred(89) -> false
    #
    # Returns an boolean
    def near_hundred(val_n)
      distance100 = (val_n - 100).abs
      distance200 = (val_n - 200).abs

      distance100 <= 10 || distance200 <= 10
    end

    # Given 2 int values, return true if they are both in the range 30..40
    # inclusive, or they are both in the range 40..50 inclusive.
    #
    # Examples
    #
    # in3050(30, 31) -> true
    # in3050(30, 41) -> false
    # in3050(40, 50) -> true
    #
    # Returns boolean
    def in_3050(val_a, val_b)
      lower_range = (30..40)
      upper_range = (40..50)

      lower_range.cover?(val_a) && lower_range.cover?(val_b) ||
        upper_range.cover?(val_a) && upper_range.cover?(val_b)
    end

    # Given 2 int values, return true if either of them is in the range 10..20
    # inclusive.
    #
    # Examples
    #
    # in1020(12, 99) -> true
    # in1020(21, 12) -> true
    # in1020(8, 99) -> false
    #
    # Returns boolean
    def in_1020(val_a, val_b)
      range = (10..20)
      range.cover?(val_a) || range.cover?(val_b)
    end

    # Given two non-negative int values, return true if they have the same last
    # digit, such as with 27 and 57. Note that the % "mod" operator computes
    # remainders, so 17 % 10 is 7.
    #
    # Examples
    #
    # lastDigit(7, 17) -> true
    # lastDigit(6, 17) -> false
    # lastDigit(3, 113) -> true
    #
    # Returns boolean
    def last_digit(val_a, val_b)
      val_a % 10 == val_b % 10
    end

    # We have a loud talking parrot. The "hour" parameter is the current hour
    # time in the range 0..23. We are in trouble if the parrot is talking and
    # the hour is before 7 or after 20. Return true if we are in trouble.
    #
    # Examples
    # parrotTrouble(true, 6) -> true
    # parrotTrouble(true, 7) -> false
    # parrotTrouble(true, 6) -> false
    #
    # Returns boolean
    def parrot_trouble(talking, hour)
      talking && (hour < 7 || hour > 20)
    end

    # Given a string, return a new string where the last 3 chars are now in
    # upper case. If the string has less than 3 chars, uppercase whatever is
    # there.
    # Note that str.toUpperCase() returns the uppercase version of a string.
    #
    # Examples
    #
    # endUp("Hello") -> "HeLLO"
    # endUp("hi there") -> "hi thERE"
    # endUp("hi") -> "HI"
    def end_up(str)
      return str.upcase if str.length < 3

      mid = (str.length - 3).negative? ? 0 : str.length - 3
      first_str = str[0..mid - 1]
      last_str = str[mid..str.length]
      first_str + last_str.upcase
    end
  end
end
