require 'date'

class Holidate
  def self.find_day nth, wday, month, year=Date.today.year
    if nth > 0
      Date.new year, month, (      1       + ( nth - 1) * 7 + (wday       -       Date.new(year, month, 1).wday) % 7)
    elsif nth < 0
      days_in_month = ((Date.new(year, month) >> 1) -1).day
      Date.new year, month, (days_in_month - (-nth - 1) * 7 - (Date.new(year, month, days_in_month).wday - wday) % 7)
    end
  end

  def self.new_years_day year
    Date.new year, 1, 1
  end
  self.singleton_class.send(:alias_method, :new_year, :new_years_day)

  def self.martin_luther_king_jr_day year
    self.find_day 3, 1, 1, year
  end
  self.singleton_class.send(:alias_method, :mlk, :martin_luther_king_jr_day)

  def self.washingtons_birthday year
    self.find_day 3, 1, 2, year
  end
  self.singleton_class.send(:alias_method, :washington, :washingtons_birthday)

  def self.memorial_day year
    self.find_day -1, 1, 5, year
  end
  self.singleton_class.send(:alias_method, :memorial, :memorial_day)

  def self.independence_day year
    Date.new year, 7, 4
  end
  self.singleton_class.send(:alias_method, :july_4, :independence_day)

  def self.labor_day year
    self.find_day 1, 1, 9, year
  end
  self.singleton_class.send(:alias_method, :labor, :labor_day)

  def self.columbus_day year
    self.find_day 2, 1, 10, year
  end
  self.singleton_class.send(:alias_method, :columbus, :columbus_day)

  def self.veterans_day year
    Date.new year, 11, 11
  end
  self.singleton_class.send(:alias_method, :veteran, :veterans_day)

  def self.thanksgiving_day year
    self.find_day 4, 4, 11, year
  end
  self.singleton_class.send(:alias_method, :thanksgiving, :thanksgiving_day)

  def self.christmas_day year
    Date.new year, 12, 25
  end
  self.singleton_class.send(:alias_method, :xmas, :christmas_day)
end
