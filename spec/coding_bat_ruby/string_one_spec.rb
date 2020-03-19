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

  it 'validate front_again' do
    expect(subject.front_again('edited')).to be true
    expect(subject.front_again('edit')).to be false
    expect(subject.front_again('ed')).to be true
    expect(subject.front_again('jj')).to be true
    expect(subject.front_again('jjj')).to be true
    expect(subject.front_again('jjjk')).to be false
    expect(subject.front_again('x')).to be false
    expect(subject.front_again('')).to be false
    expect(subject.front_again('java')).to be false
    expect(subject.front_again('javaja')).to be true
  end

  it 'validates middle_two' do
    expect(subject.middle_two('string')).to eq 'ri'
    expect(subject.middle_two('code')).to eq 'od'
    expect(subject.middle_two('Practice')).to eq 'ct'
    expect(subject.middle_two('ab')).to eq 'ab'
    expect(subject.middle_two('0123456789')).to eq '45'
  end

  it 'validates n_twice' do
    expect(subject.n_twice('Hello', 2)).to eq 'Helo'
    expect(subject.n_twice('Chocolate', 3)).to eq 'Choate'
    expect(subject.n_twice('Chocolate', 1)).to eq 'Ce'
    expect(subject.n_twice('Chocolate', 0)).to eq ''
    expect(subject.n_twice('Hello', 4)).to eq 'Hellello'
    expect(subject.n_twice('Code', 4)).to eq 'CodeCode'
    expect(subject.n_twice('Code', 2)).to eq 'Code'
  end

  it 'validates without_end' do
    expect(subject.without_end('Hello')).to eq 'ell'
    expect(subject.without_end('java')).to eq 'av'
    expect(subject.without_end('coding')).to eq 'odin'
    expect(subject.without_end('code')).to eq 'od'
    expect(subject.without_end('ab')).to eq ''
    expect(subject.without_end('Chocolate!')).to eq 'hocolate'
    expect(subject.without_end('Kitten')).to eq 'itte'
    expect(subject.without_end('woohoo')).to eq 'ooho'
  end
end
