# frozen_string_literal: true

require 'coding_bat_ruby/string_one'

# rubocop:disable Metrics/BlockLength
RSpec.describe CodingBatRuby::StringOne do
  # rubocop:enable Metrics/BlockLength

  it 'validates hello_name' do
    expect(subject.hello_name('Bob')).to eq 'Hello Bob!'
    expect(subject.hello_name('Alice')).to eq 'Hello Alice!'
    expect(subject.hello_name('X')).to eq 'Hello X!'
    expect(subject.hello_name('Dolly')).to eq 'Hello Dolly!'
    expect(subject.hello_name('Alpha')).to eq 'Hello Alpha!'
    expect(subject.hello_name('Omega')).to eq 'Hello Omega!'
    expect(subject.hello_name('Goodbye')).to eq 'Hello Goodbye!'
    expect(subject.hello_name('ho ho ho')).to eq 'Hello ho ho ho!'
    expect(subject.hello_name('xyz!')).to eq 'Hello xyz!!'
    expect(subject.hello_name('Hello')).to eq 'Hello Hello!'
  end

  it 'validates without_two' do
    expect(subject.without_two('HelloHe')).to eq 'lloHe'
    expect(subject.without_two('HelloHi')).to eq 'HelloHi'
    expect(subject.without_two('Hi')).to eq ''
    expect(subject.without_two('Chocolate')).to eq 'Chocolate'
    expect(subject.without_two('xxx')).to eq 'x'
    expect(subject.without_two('xx')).to eq ''
    expect(subject.without_two('x')).to eq 'x'
    expect(subject.without_two('')).to eq ''
    expect(subject.without_two('Fruits')).to eq 'Fruits'
  end

  it 'validates con_cat' do
    expect(subject.con_cat('abc', 'cat')).to eq 'abcat'
    expect(subject.con_cat('dog', 'cat')).to eq 'dogcat'
    expect(subject.con_cat('abc', '')).to eq 'abc'
    expect(subject.con_cat('', 'cat')).to eq 'cat'
    expect(subject.con_cat('pig', 'g')).to eq 'pig'
    expect(subject.con_cat('pig', 'doggy')).to eq 'pigdoggy'
  end

  it 'validates extra_front' do
    expect(subject.extra_front('Hello')).to eq 'HeHeHe'
    expect(subject.extra_front('ab')).to eq 'ababab'
    expect(subject.extra_front('H')).to eq 'HHH'
    expect(subject.extra_front('')).to eq ''
    expect(subject.extra_front('Candy')).to eq 'CaCaCa'
    expect(subject.extra_front('Code')).to eq 'CoCoCo'
  end
end
