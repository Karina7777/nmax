require 'spec_helper'
require 'nmax'

RSpec.describe Nmax do
  it 'has a version number' do
    expect(Nmax::VERSION).not_to be nil
  end

  it 'case when text have only numbers' do
    text = '12345'
    number_arr = Nmax.return_only_numbers(text)
    expect(number_arr).to eq([12345])
  end

  it 'case when text have strings at the end' do
    text = '12345 some text'
    number_arr = Nmax.return_only_numbers(text)
    expect(number_arr).to eq([12345])
  end

  it 'case when text have strings at the begining' do
    text = 'some text 12345'
    number_arr = Nmax.return_only_numbers(text)
    expect(number_arr).to eq([12345])
  end

  it 'case when text have strings at the begining, middle and at the end' do
    text = 'some text 12345 some text 123'
    number_arr = Nmax.return_only_numbers(text)
    expect(number_arr).to eq([12345, 123])
  end

  it 'should return array which largest numbers follow at first' do
    text = 'some text12345some text123some text 11 some text 5'
    number_arr = Nmax.return_only_numbers(text)
    largest_n_numbers = Nmax.get_n_largest_numbers(number_arr, 5)
    expect(largest_n_numbers).to eq([12345, 123, 11, 5])
  end

end

