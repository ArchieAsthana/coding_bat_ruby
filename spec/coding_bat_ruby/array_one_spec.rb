# frozen_string_literal: true

require 'coding_bat_ruby/array_one'

# rubocop:disable Metric/BlockLength
RSpec.describe CodingBatRuby::ArrayOne do
  # rubocop:enable Metric/BlockLength
  it 'validates first_last6' do
    expect(subject.first_last6([1, 2, 6])).to be true
    expect(subject.first_last6([6, 1, 2, 3])).to be true
    expect(subject.first_last6([13, 6, 1, 2, 3])).to be false
    expect(subject.first_last6([13, 6, 1, 2, 6])).to be true
    expect(subject.first_last6([3, 2, 1])).to be false
    expect(subject.first_last6([3, 6, 1])).to be false
    expect(subject.first_last6([3, 6])).to be true
    expect(subject.first_last6([6])).to be true
    expect(subject.first_last6([3])).to be false
    expect(subject.first_last6([5, 6])).to be true
    expect(subject.first_last6([5, 5])).to be false
    expect(subject.first_last6([1, 2, 3, 4, 6])).to be true
    expect(subject.first_last6([1, 2, 3, 4])).to be false
  end

  it 'validates has_23' do
    expect(subject.has_23([2, 5])).to be true
    expect(subject.has_23([4, 3])).to be true
    expect(subject.has_23([4, 5])).to be false
    expect(subject.has_23([2, 2])).to be true
    expect(subject.has_23([3, 2])).to be true
    expect(subject.has_23([3, 3])).to be true
    expect(subject.has_23([7, 7])).to be false
    expect(subject.has_23([3, 9])).to be true
    expect(subject.has_23([9, 5])).to be false
  end

  it 'validates max_triple' do
    expect(subject.max_triple([1, 2, 3])).to be 3
    expect(subject.max_triple([1, 5, 3])).to be 5
    expect(subject.max_triple([5, 2, 3])).to be 5
    expect(subject.max_triple([1, 2, 3, 1, 1])).to be 3
    expect(subject.max_triple([1, 7, 3, 1, 5])).to be 5
    expect(subject.max_triple([5, 1, 3, 7, 1])).to be 5
    expect(subject.max_triple([5, 1, 7, 3, 7, 8, 1])).to be 5
    expect(subject.max_triple([5, 1, 7, 9, 7, 8, 1])).to be 9
    expect(subject.max_triple([5, 1, 7, 3, 7, 8, 9])).to be 9
    expect(subject.max_triple([2, 2, 5, 1, 1])).to be 5
  end

  it 'validates same_first_last' do
    expect(subject.same_first_last([1, 2, 3])).to be false
    expect(subject.same_first_last([1, 2, 3, 1])).to be true
    expect(subject.same_first_last([1, 2, 1])).to be true
    expect(subject.same_first_last([7])).to be true
    expect(subject.same_first_last([])).to be false
    expect(subject.same_first_last([1, 2, 3, 4, 5, 1])).to be true
    expect(subject.same_first_last([1, 2, 3, 4, 5, 13])).to be false
    expect(subject.same_first_last([13, 2, 3, 4, 5, 13])).to be true
    expect(subject.same_first_last([7, 7])).to be true
  end

  it 'valudates unlucky_one' do
    expect(subject.unlucky_one([1, 3, 4, 5])).to be true
    expect(subject.unlucky_one([2, 1, 3, 4, 5])).to be true
    expect(subject.unlucky_one([1, 1, 1])).to be false
    expect(subject.unlucky_one([1, 3, 1])).to be true
    expect(subject.unlucky_one([1, 1, 3])).to be true
    expect(subject.unlucky_one([1, 2, 3])).to be false
    expect(subject.unlucky_one([3, 3, 3])).to be false
    expect(subject.unlucky_one([1, 3])).to be true
    expect(subject.unlucky_one([1, 4])).to be false
    expect(subject.unlucky_one([1])).to be false
    expect(subject.unlucky_one([])).to be false
    expect(subject.unlucky_one([1, 1, 1, 3, 1])).to be false
    expect(subject.unlucky_one([1, 1, 3, 1, 1])).to be true
    expect(subject.unlucky_one([1, 1, 1, 1, 3])).to be true
    expect(subject.unlucky_one([1, 4, 1, 5])).to be false
    expect(subject.unlucky_one([1, 1, 2, 3])).to be false
    expect(subject.unlucky_one([2, 3, 2, 1])).to be false
    expect(subject.unlucky_one([2, 3, 1, 3])).to be true
    expect(subject.unlucky_one([1, 2, 3, 4, 1, 3])).to be true
  end
end
