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

  it 'validates see_color' do
    expect(subject.see_color('redxx')).to eq 'red'
    expect(subject.see_color('xxred')).to eq ''
    expect(subject.see_color('blueTimes')).to eq 'blue'
    expect(subject.see_color('NoColor')).to eq ''
    expect(subject.see_color('red')).to eq 'red'
    expect(subject.see_color('re')).to eq ''
    expect(subject.see_color('blu')).to eq ''
    expect(subject.see_color('blue')).to eq 'blue'
    expect(subject.see_color('a')).to eq ''
    expect(subject.see_color('')).to eq ''
    expect(subject.see_color('xyzred')).to eq ''
  end

  it 'validates see_color_with_nested_ternary' do
    expect(subject.see_color_with_nested_ternary('redxx')).to eq 'red'
    expect(subject.see_color_with_nested_ternary('xxred')).to eq ''
    expect(subject.see_color_with_nested_ternary('blueTimes')).to eq 'blue'
    expect(subject.see_color_with_nested_ternary('NoColor')).to eq ''
    expect(subject.see_color_with_nested_ternary('red')).to eq 'red'
    expect(subject.see_color_with_nested_ternary('re')).to eq ''
    expect(subject.see_color_with_nested_ternary('blu')).to eq ''
    expect(subject.see_color_with_nested_ternary('blue')).to eq 'blue'
    expect(subject.see_color_with_nested_ternary('a')).to eq ''
    expect(subject.see_color_with_nested_ternary('')).to eq ''
    expect(subject.see_color_with_nested_ternary('xyzred')).to eq ''
  end

  it 'validates has_bad?' do
    expect(subject.has_bad?('badxx')).to be true
    expect(subject.has_bad?('xbadxx')).to be true
    expect(subject.has_bad?('xxbadxx')).to be false
    expect(subject.has_bad?('code')).to be false
    expect(subject.has_bad?('bad')).to be true
    expect(subject.has_bad?('ba')).to be false
    expect(subject.has_bad?('xba')).to be false
    expect(subject.has_bad?('xbadx')).to be true
    expect(subject.has_bad?('')).to be false
    expect(subject.has_bad?('badyy')).to be true
  end

  it 'validates make_tags' do
    expect(subject.make_tags('i', 'Yay')).to eq '<i>Yay</i>'
    expect(subject.make_tags('i', 'Hello')).to eq '<i>Hello</i>'
    expect(subject.make_tags('cite', 'Yay')).to eq '<cite>Yay</cite>'
    expect(subject.make_tags('address', 'here')).to eq '<address>here</address>'
    expect(subject.make_tags('body', 'Heart')).to eq '<body>Heart</body>'
    expect(subject.make_tags('i', 'i')).to eq '<i>i</i>'
    expect(subject.make_tags('i', '')).to eq '<i></i>'
  end

  it 'validates without_x' do
    expect(subject.without_x('xHix')).to eq 'Hi'
    expect(subject.without_x('xHi')).to eq 'Hi'
    expect(subject.without_x('Hxix')).to eq 'Hxi'
    expect(subject.without_x('Hi')).to eq 'Hi'
    expect(subject.without_x('xxHi')).to eq 'xHi'
    expect(subject.without_x('Hix')).to eq 'Hi'
    expect(subject.without_x('xaxbx')).to eq 'axb'
    expect(subject.without_x('xx')).to eq ''
    expect(subject.without_x('x')).to eq ''
    expect(subject.without_x('')).to eq ''
    expect(subject.without_x('Hello')).to eq 'Hello'
    expect(subject.without_x('Hexllo')).to eq 'Hexllo'
  end

  it 'validates non_start' do
    expect(subject.non_start('Hello', 'There')).to eq 'ellohere'
    expect(subject.non_start('java', 'code')).to eq 'avaode'
    expect(subject.non_start('shoti', 'java')).to eq 'hotiava'
    expect(subject.non_start('ab', 'xy')).to eq 'by'
    expect(subject.non_start('ab', 'x')).to eq 'b'
    expect(subject.non_start('x', 'ac')).to eq 'c'
    expect(subject.non_start('a', 'x')).to eq ''
    expect(subject.non_start('kit', 'kat')).to eq 'itat'
    expect(subject.non_start('mart', 'dart')).to eq 'artart'
  end

  it 'validates first_half' do
    expect(subject.first_half('WooHoo')).to eq 'Woo'
    expect(subject.first_half('HelloThere')).to eq 'Hello'
    expect(subject.first_half('abcdef')).to eq 'abc'
    expect(subject.first_half('ab')).to eq 'a'
    expect(subject.first_half('')).to eq ''
    expect(subject.first_half('0123456789')).to eq '01234'
    expect(subject.first_half('kitten')).to eq 'kit'
  end
end
