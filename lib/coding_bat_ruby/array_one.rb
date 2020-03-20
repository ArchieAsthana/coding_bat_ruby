# frozen_string_literal: true

module CodingBatRuby
  # Basic Array problems no loops
  class ArrayOne
    # Given an array of ints, return true if 6 appears as either the first or
    # last element in the array. The array will be length 1 or more.
    #
    # Examples
    #
    # first_last6([1, 2, 6]) -> true
    # first_last6([6, 1, 2, 3]) -> true
    # first_last6([13, 6, 1, 2, 3]) -> false
    #
    # Returns an array of Integer
    def first_last6(nums)
      nums[0] == 6 || nums[-1] == 6
    end

    # Given an int array length 2, return true if it contains a 2 or a 3.
    #
    # Examples
    #
    # has_23([2, 5]) -> true
    # has_23([4, 3]) -> true
    # has_23([4, 5]) -> false
    #
    # Return a Boolean
    def has_23(nums)
      nums.include?(2) || nums.include?(3)
    end

    # Given an array of ints of odd length, look at the first, last, and middle
    # values in the array and return the largest. The array length will be a
    # least 1.
    #
    # Examples
    # max_triple([1, 2, 3]) -> 3
    # max_triple([1, 5, 3]) -> 5
    # max_triple([5, 2, 3]) -> 5
    #
    # Returns a array of Integers
    def max_triple(nums)
      [nums[0], nums[nums.length / 2], nums[-1]].max
    end
  end
end
