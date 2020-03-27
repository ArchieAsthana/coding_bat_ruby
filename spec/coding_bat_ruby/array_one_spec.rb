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

  it 'validates make_last' do
    expect(subject.make_last([4, 5, 6])).to eq [0, 0, 0, 0, 0, 6]
    expect(subject.make_last([1, 2])).to eq [0, 0, 0, 2]
    expect(subject.make_last([3])).to eq [0, 3]
    expect(subject.make_last([0])).to eq [0, 0]
    expect(subject.make_last([7, 7, 7])).to eq [0, 0, 0, 0, 0, 7]
    expect(subject.make_last([3, 1, 4])).to eq [0, 0, 0, 0, 0, 4]
    expect(subject.make_last([1, 2, 3, 4])).to eq [0, 0, 0, 0, 0, 0, 0, 4]
    expect(subject.make_last([1, 2, 3, 0])).to eq [0, 0, 0, 0, 0, 0, 0, 0]
    expect(subject.make_last([2, 4])).to eq [0, 0, 0, 4]
  end

  it 'validates has_23' do
    expect(subject.make_end([1, 2, 3])).to eq [3, 3, 3]
    expect(subject.make_end([11, 5, 9])).to eq [11, 11, 11]
    expect(subject.make_end([2, 11, 3])).to eq [3, 3, 3]
    expect(subject.make_end([11, 3, 3])).to eq [11, 11, 11]
    expect(subject.make_end([3, 11, 11])).to eq [11, 11, 11]
    expect(subject.make_end([2, 2, 2])).to eq [2, 2, 2]
    expect(subject.make_end([2, 11, 2])).to eq [2, 2, 2]
    expect(subject.make_end([0, 1, 1])).to eq [1, 1, 1]
  end

  it 'validates bigger_two' do
    expect(subject.bigger_two([1, 2], [3, 4])).to eq [3, 4]
    expect(subject.bigger_two([3, 4], [1, 2])).to eq [3, 4]
    expect(subject.bigger_two([1, 1], [1, 2])).to eq [1, 2]
    expect(subject.bigger_two([2, 1], [1, 3])).to eq [1, 3]
    expect(subject.bigger_two([2, 1], [1, 1])).to eq [2, 1]
    expect(subject.bigger_two([1, 3], [2, 2])).to eq [1, 3]
    expect(subject.bigger_two([6, 7], [3, 1])).to eq [6, 7]
  end
end
