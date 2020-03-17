# frozen_string_literal: true

require 'coding_bat_ruby/string_one'

RSpec.describe CodingBatRuby::StringOne do
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
end
