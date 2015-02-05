gem 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'holidate'

describe Holidate do
  it "finds New Year's Day" do
    Holidate.new_year(2014).must_equal Date.new 2014, 1, 1
    Holidate.new_year(2015).must_equal Date.new 2015, 1, 1
    Holidate.new_year(2016).must_equal Date.new 2016, 1, 1
    Holidate.new_year(2017).must_equal Date.new 2017, 1, 1
  end

  it 'finds Martin Luther King, Jr. Day' do
    Holidate.mlk(2014).must_equal Date.new 2014, 1, 20
    Holidate.mlk(2015).must_equal Date.new 2015, 1, 19
    Holidate.mlk(2016).must_equal Date.new 2016, 1, 18
    Holidate.mlk(2017).must_equal Date.new 2017, 1, 16
  end

  it "finds Washington's Birthday" do
    Holidate.washington(2014).must_equal Date.new 2014, 2, 17
    Holidate.washington(2015).must_equal Date.new 2015, 2, 16
    Holidate.washington(2016).must_equal Date.new 2016, 2, 15
    Holidate.washington(2017).must_equal Date.new 2017, 2, 20
  end

  it 'finds Memorial Day' do
    Holidate.memorial(2014).must_equal Date.new 2014, 5, 26
    Holidate.memorial(2015).must_equal Date.new 2015, 5, 25
    Holidate.memorial(2016).must_equal Date.new 2016, 5, 30
    Holidate.memorial(2017).must_equal Date.new 2017, 5, 29
  end

  it 'finds Independence Day' do
    Holidate.july_4(2014).must_equal Date.new 2014, 7, 4
    Holidate.july_4(2015).must_equal Date.new 2015, 7, 4
    Holidate.july_4(2016).must_equal Date.new 2016, 7, 4
    Holidate.july_4(2017).must_equal Date.new 2017, 7, 4
  end

  it 'finds Labor Day' do
    Holidate.labor(2014).must_equal Date.new 2014, 9, 1
    Holidate.labor(2015).must_equal Date.new 2015, 9, 7
    Holidate.labor(2016).must_equal Date.new 2016, 9, 5
    Holidate.labor(2017).must_equal Date.new 2017, 9, 4
  end

  it 'finds Columbus Day' do
    Holidate.columbus(2014).must_equal Date.new 2014, 10, 13
    Holidate.columbus(2015).must_equal Date.new 2015, 10, 12
    Holidate.columbus(2016).must_equal Date.new 2016, 10, 10
    Holidate.columbus(2017).must_equal Date.new 2017, 10, 9
  end

  it 'finds Veterans Day' do
    Holidate.veteran(2014).must_equal Date.new 2014, 11, 11
    Holidate.veteran(2015).must_equal Date.new 2015, 11, 11
    Holidate.veteran(2016).must_equal Date.new 2016, 11, 11
    Holidate.veteran(2017).must_equal Date.new 2017, 11, 11
  end

  it 'finds Thanksgiving Day' do
    Holidate.thanksgiving(2014).must_equal Date.new 2014, 11, 27
    Holidate.thanksgiving(2015).must_equal Date.new 2015, 11, 26
    Holidate.thanksgiving(2016).must_equal Date.new 2016, 11, 24
    Holidate.thanksgiving(2017).must_equal Date.new 2017, 11, 23
  end

  it 'finds Christmas Day' do
    Holidate.xmas(2014).must_equal Date.new 2014, 12, 25
    Holidate.xmas(2015).must_equal Date.new 2015, 12, 25
    Holidate.xmas(2016).must_equal Date.new 2016, 12, 25
    Holidate.xmas(2017).must_equal Date.new 2017, 12, 25
  end

  it 'accepts a strings, symbols, or integers as arguments for #find' do
    Holidate.find('first', 'Friday', 'December', '1985').must_equal Date.new 1985, 12, 6
    Holidate.find(:third, :wednesday , :october, :'2013').must_equal Date.new 2013, 10, 16
    Holidate.find(4, 0, 7, 1985).must_equal Date.new 1985, 7, 28
  end

  it 'allows you to search from the beginning or end of a month with #find' do
    Holidate.find('second', 'Tuesday', 'July', 2012).must_equal Date.new 2012, 7, 10
    Holidate.find('last', 'Thursday', 'January', 2006).must_equal Date.new 2006, 1, 26
  end

  it 'allows spaces, underscores, or hyphens to separate words in the first argument of #find when searching from the end of a month' do
    Holidate.find('second to last', 'Tuesday', 'September', 1991).must_equal Date.new 1991, 9, 17
    Holidate.find('fourth-from-last', 'Thursday', 'April', 2005).must_equal Date.new 2005, 4, 7
    Holidate.find(:fourth_to_last, :wednesday, :june, 1989).must_equal Date.new 1989, 6, 7
  end

  it 'ignores case for string and symbol arguments of #find' do
    Holidate.find('third', 'wednesday', 'october', 2004).must_equal Date.new 2004, 10, 20
    Holidate.find(:last, :Sunday, :August, 2006).must_equal Date.new 2006, 8, 27
  end

  it 'allows abbreviations for the first three arguments of #find' do
    Holidate.find('1st', 'thu', 'jan', 1970).must_equal Date.new 1970, 1, 1
  end
end