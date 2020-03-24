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
    # Returns a Boolean
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
    # Returns a Boolean
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
    # Returns an Integer
    def max_triple(nums)
      [nums[0], nums[nums.length / 2], nums[-1]].max
    end

    # Given an array of ints, return true if the array is length 1 or more,
    # and the first element and the last element are equal.
    #
    # Examples
    #
    # same_first_last([1, 2, 3]) -> false
    # same_first_last([1, 2, 3, 1]) -> true
    # same_first_last([1, 2, 1]) -> true
    #
    # Returns a Boolean
    def same_first_last(nums)
      nums.first == nums.last && !nums.empty?
    end

    # We'll say that a 1 immediately followed by a 3 in an array is an
    # "unlucky" 1. Return true if the given array contains an unlucky 1
    # in the first 2 or last 2 positions in the array.
    #
    # Examples
    #
    # unlucky_one([1, 3, 4, 5]) -> true
    # unlucky_one([2, 1, 3, 4, 5]) -> true
    # unlucky_one([1, 1, 1]) -> false
    #
    # Returns an Boolean
    def unlucky_one(nums)
      (nums[0] == 1 && nums[1] == 3) ||
      (nums[1] == 1 && nums[2] == 3) ||
      (nums[-2] == 1 && nums[-1] == 3)
    end
  end
end
