gem 'minitest'
require 'minitest/autorun'
require 'holidate'

class HolidateTest < Minitest::Test
  def test_new_year
    assert_equal Date.new(2014, 1, 1),
        Holidate.new_year(2014)
    assert_equal Date.new(2015, 1, 1),
        Holidate.new_year(2015)
    assert_equal Date.new(2016, 1, 1),
        Holidate.new_year(2016)
    assert_equal Date.new(2017, 1, 1),
        Holidate.new_year(2017)
  end

  def test_mlk
    assert_equal Date.new(2014, 1, 20),
             Holidate.mlk(2014)
    assert_equal Date.new(2015, 1, 19),
             Holidate.mlk(2015)
    assert_equal Date.new(2016, 1, 18),
             Holidate.mlk(2016)
    assert_equal Date.new(2017, 1, 16),
             Holidate.mlk(2017)
  end

  def test_washington
    assert_equal Date.new(2014, 2, 17),
      Holidate.washington(2014)
    assert_equal Date.new(2015, 2, 16),
      Holidate.washington(2015)
    assert_equal Date.new(2016, 2, 15),
      Holidate.washington(2016)
    assert_equal Date.new(2017, 2, 20),
      Holidate.washington(2017)
  end

  def test_memorial
    assert_equal Date.new(2014, 5, 26),
        Holidate.memorial(2014)
    assert_equal Date.new(2015, 5, 25),
        Holidate.memorial(2015)
    assert_equal Date.new(2016, 5, 30),
        Holidate.memorial(2016)
    assert_equal Date.new(2017, 5, 29),
        Holidate.memorial(2017)
  end

  def test_july_4
    assert_equal Date.new(2014, 7, 4),
          Holidate.july_4(2014)
    assert_equal Date.new(2015, 7, 4),
          Holidate.july_4(2015)
    assert_equal Date.new(2016, 7, 4),
          Holidate.july_4(2016)
    assert_equal Date.new(2017, 7, 4),
          Holidate.july_4(2017)
  end

  def test_labor
    assert_equal Date.new(2014, 9, 1),
           Holidate.labor(2014)
    assert_equal Date.new(2015, 9, 7),
           Holidate.labor(2015)
    assert_equal Date.new(2016, 9, 5),
           Holidate.labor(2016)
    assert_equal Date.new(2017, 9, 4),
           Holidate.labor(2017)
  end

  def test_columbus
    assert_equal Date.new(2014, 10, 13),
        Holidate.columbus(2014)
    assert_equal Date.new(2015, 10, 12),
        Holidate.columbus(2015)
    assert_equal Date.new(2016, 10, 10),
        Holidate.columbus(2016)
    assert_equal Date.new(2017, 10, 9),
        Holidate.columbus(2017)
  end

  def test_veteran
    assert_equal Date.new(2014, 11, 11),
         Holidate.veteran(2014)
    assert_equal Date.new(2015, 11, 11),
         Holidate.veteran(2015)
    assert_equal Date.new(2016, 11, 11),
         Holidate.veteran(2016)
    assert_equal Date.new(2017, 11, 11),
         Holidate.veteran(2017)
  end

  def test_thanksgiving
    assert_equal Date.new(2014, 11, 27),
    Holidate.thanksgiving(2014)
    assert_equal Date.new(2015, 11, 26),
    Holidate.thanksgiving(2015)
    assert_equal Date.new(2016, 11, 24),
    Holidate.thanksgiving(2016)
    assert_equal Date.new(2017, 11, 23),
    Holidate.thanksgiving(2017)
  end

  def test_xmas
    assert_equal Date.new(2014, 12, 25),
            Holidate.xmas(2014)
    assert_equal Date.new(2015, 12, 25),
            Holidate.xmas(2015)
    assert_equal Date.new(2016, 12, 25),
            Holidate.xmas(2016)
    assert_equal Date.new(2017, 12, 25),
            Holidate.xmas(2017)
  end
end
