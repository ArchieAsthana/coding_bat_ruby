# frozen_string_literal: true

require 'coding_bat_ruby/array_one'

RSpec.describe CodingBatRuby::ArrayOne do
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
end
