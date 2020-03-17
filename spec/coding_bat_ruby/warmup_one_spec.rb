# frozen_string_literal: true

require 'coding_bat_ruby/warmup_one'

# rubocop:disable Metrics/BlockLength
RSpec.describe CodingBatRuby::WarmupOne do
  # rubocop:enable Metrics/BlockLength
  it 'validates sleep_in' do
    expect(subject.sleep_in(false, false)).to be true
    expect(subject.sleep_in(true, false)).to be false
    expect(subject.sleep_in(false, true)).to be true
    expect(subject.sleep_in(true, true)).to be true
  end

  it 'validates monkey_trouble' do
    expect(subject.monkey_trouble(true, true)).to be true
    expect(subject.monkey_trouble(false, false)).to be true
    expect(subject.monkey_trouble(true, false)).to be false
    expect(subject.monkey_trouble(false, true)).to be false
  end

  it 'validates sum_double' do
    expect(subject.sum_double(1, 2)).to be 3
    expect(subject.sum_double(3, 2)).to be 5
    expect(subject.sum_double(2, 2)).to be 8
    expect(subject.sum_double(-1, 0)).to be(-1)
    expect(subject.sum_double(3, 3)).to be 12
    expect(subject.sum_double(0, 0)).to be 0
    expect(subject.sum_double(0, 1)).to be 1
    expect(subject.sum_double(3, 4)).to be 7
  end

  it 'validates close_ten' do
    expect(subject.close_ten(8, 13)).to be 8
    expect(subject.close_ten(13, 8)).to be 8
    expect(subject.close_ten(13, 7)).to be 0
    expect(subject.close_ten(7, 13)).to be 0
    expect(subject.close_ten(9, 13)).to be 9
    expect(subject.close_ten(13, 8)).to be 8
    expect(subject.close_ten(10, 12)).to be 10
    expect(subject.close_ten(11, 10)).to be 10
    expect(subject.close_ten(5, 21)).to be 5
    expect(subject.close_ten(0, 20)).to be 0
    expect(subject.close_ten(10, 10)).to be 0
  end

  it 'validates near_hundred' do
    expect(subject.near_hundred(93)).to be true
    expect(subject.near_hundred(90)).to be true
    expect(subject.near_hundred(89)).to be false
    expect(subject.near_hundred(110)).to be true
    expect(subject.near_hundred(111)).to be false
    expect(subject.near_hundred(121)).to be false
    expect(subject.near_hundred(-101)).to be false
    expect(subject.near_hundred(-209)).to be false
    expect(subject.near_hundred(190)).to be true
    expect(subject.near_hundred(209)).to be true
    expect(subject.near_hundred(0)).to be false
    expect(subject.near_hundred(5)).to be false
    expect(subject.near_hundred(-50)).to be false
    expect(subject.near_hundred(191)).to be true
    expect(subject.near_hundred(189)).to be false
    expect(subject.near_hundred(200)).to be true
    expect(subject.near_hundred(210)).to be true
    expect(subject.near_hundred(211)).to be false
    expect(subject.near_hundred(290)).to be false
  end

  it 'validates in_3050' do
    expect(subject.in_3050(30, 31)).to be true
    expect(subject.in_3050(30, 45)).to be false
    expect(subject.in_3050(40, 50)).to be true
    expect(subject.in_3050(40, 51)).to be false
    expect(subject.in_3050(39, 50)).to be false
    expect(subject.in_3050(50, 39)).to be false
    expect(subject.in_3050(40, 39)).to be true
    expect(subject.in_3050(49, 48)).to be true
    expect(subject.in_3050(50, 40)).to be true
    expect(subject.in_3050(50, 51)).to be false
    expect(subject.in_3050(35, 36)).to be true
    expect(subject.in_3050(35, 45)).to be false
  end

  it 'validates in_1020' do
    expect(subject.in_1020(12, 99)).to be true
    expect(subject.in_1020(21, 12)).to be true
    expect(subject.in_1020(8, 99)).to be false
    expect(subject.in_1020(99, 10)).to be true
    expect(subject.in_1020(20, 20)).to be true
    expect(subject.in_1020(21, 21)).to be false
    expect(subject.in_1020(9, 9)).to be false
  end

  it 'validates last_digit' do
    expect(subject.last_digit(7, 17)).to be true
    expect(subject.last_digit(6, 17)).to be false
    expect(subject.last_digit(3, 113)).to be true
    expect(subject.last_digit(114, 113)).to be false
    expect(subject.last_digit(114, 4)).to be true
    expect(subject.last_digit(10, 0)).to be true
    expect(subject.last_digit(11, 0)).to be false
  end

  it 'validates parrot_trouble' do
    expect(subject.parrot_trouble(true, 6)).to be true
    expect(subject.parrot_trouble(true, 7)).to be false
    expect(subject.parrot_trouble(false, 6)).to be false
    expect(subject.parrot_trouble(true, 21)).to be true
    expect(subject.parrot_trouble(false, 21)).to be false
    expect(subject.parrot_trouble(false, 20)).to be false
    expect(subject.parrot_trouble(true, 23)).to be true
    expect(subject.parrot_trouble(false, 23)).to be false
    expect(subject.parrot_trouble(true, 20)).to be false
    expect(subject.parrot_trouble(false, 12)).to be false
  end

  it 'validates end_up' do
    expect(subject.end_up('Hello')).to eq 'HeLLO'
    expect(subject.end_up('hi there')).to eq 'hi thERE'
    expect(subject.end_up('hi')).to eq 'HI'
  end
end
