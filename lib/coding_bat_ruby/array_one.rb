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
    # Returns a Boolean
    def unlucky_one(nums)
      (nums[0] == 1 && nums[1] == 3) ||
        (nums[1] == 1 && nums[2] == 3) ||
        (nums[-2] == 1 && nums[-1] == 3)
    end

    # Given an int array, return a new array with double the length where
    # its last element is the same as the original array, and all the other
    # elements are 0. The original array will be length 1 or more.
    # Note: by default, a new int array contains all 0's.
    #
    # Examples
    #
    # make_last([4, 5, 6]) -> [0, 0, 0, 0, 0, 6]
    # make_last([1, 2]) -> [0, 0, 0, 2]
    # make_last([3]) -> [0, 3]
    #
    # Returns an Array of integers
    def make_last(nums)
      second_array = Array.new(nums.length * 2, 0)
      second_array[-1] = nums[-1]
      second_array
    end

    # Given an array of ints length 3, figure out which is larger, the first
    # or last element in the array, and set all the other elements to be that
    # value. Return the changed array.
    #
    # Examples
    #
    # make_end([1, 2, 3]) ->[3, 3, 3]
    # make_end([11, 5, 9]) ->[11, 11, 11]
    # make_end([2, 11, 3]) -> [3, 3, 3]
    #
    # Returns an Array
    def make_end(nums)
      largest = [nums[0], nums[-1]].max
      nums.each_with_index { |_val, i| nums[i] = largest }
      nums
    end

    # Start with 2 int arrays, a and b, each length 2. Consider the sum of the
    # values in each array. Return the array which has the largest sum.
    # In event of a tie, return a.
    #
    # Examples
    #
    # bigger_two([1, 2], [3, 4]) -> [3, 4]
    # bigger_two([3, 4], [1, 2]) -> [3, 4]
    # bigger_two([1, 1], [1, 2]) -> [1, 2]
    #
    # Returns an Array of Integers
    def bigger_two(arr_a, arr_b)
      return arr_a if arr_a.sum >= arr_b.sum

      arr_b
    end
  end
end
