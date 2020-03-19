# frozen_string_literal: true

module CodingBatRuby
  # Basic Array problems no loops
  class ArrayOne
    # Given an array of ints, return true if 6 appears as either the first or
    # last element in the array. The array will be length 1 or more.
    #
    # Examples
    #
    # firstLast6([1, 2, 6]) -> true
    # firstLast6([6, 1, 2, 3]) -> true
    # firstLast6([13, 6, 1, 2, 3]) -> false
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
  end
end
