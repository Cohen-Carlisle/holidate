require 'date'

class Holidate
  def self.new_years_day year
    raise ArgumentError, "Invalid value for method #{__method__}: #{year.inspect}" unless year.is_a? Integer
    Date.new year, 1
  end
  self.singleton_class.send(:alias_method, :new_year, :new_years_day)

  def self.martin_luther_king_jr_day year
    raise ArgumentError, "Invalid value for method #{__method__}: #{year.inspect}" unless year.is_a? Integer
    Date.new year, 1, (15 + (1 - Date.new(year, 1).wday)%7)
  end
  self.singleton_class.send(:alias_method, :mlk, :martin_luther_king_jr_day)

  def self.washingtons_birthday year
    raise ArgumentError, "Invalid value for method #{__method__}: #{year.inspect}" unless year.is_a? Integer
    Date.new year, 2, (15 + (1 - Date.new(year, 2).wday)%7)
  end
  self.singleton_class.send(:alias_method, :washington, :washingtons_birthday)

  def self.memorial_day year
    raise ArgumentError, "Invalid value for method #{__method__}: #{year.inspect}" unless year.is_a? Integer
    Date.new year, 5, (31 - (Date.new(year, 5, 31).wday - 1)%7)
  end
  self.singleton_class.send(:alias_method, :memorial, :memorial_day)

  def self.independence_day year
    raise ArgumentError, "Invalid value for method #{__method__}: #{year.inspect}" unless year.is_a? Integer
    Date.new year, 7, 4
  end
  self.singleton_class.send(:alias_method, :july_4, :independence_day)

  def self.labor_day year
    raise ArgumentError, "Invalid value for method #{__method__}: #{year.inspect}" unless year.is_a? Integer
    Date.new year, 9, (1 + (1 - Date.new(year, 9).wday)%7)
  end
  self.singleton_class.send(:alias_method, :labor, :labor_day)

  def self.columbus_day year
    raise ArgumentError, "Invalid value for method #{__method__}: #{year.inspect}" unless year.is_a? Integer
    Date.new year, 10, (8 + (1 - Date.new(year, 10).wday)%7)
  end
  self.singleton_class.send(:alias_method, :columbus, :columbus_day)

  def self.veterans_day year
    raise ArgumentError, "Invalid value for method #{__method__}: #{year.inspect}" unless year.is_a? Integer
    Date.new year, 11, 11
  end
  self.singleton_class.send(:alias_method, :veteran, :veterans_day)

  def self.thanksgiving_day year
    raise ArgumentError, "Invalid value for method #{__method__}: #{year.inspect}" unless year.is_a? Integer
    Date.new year, 11, (22 + (4 - Date.new(year, 11).wday)%7)
  end
  self.singleton_class.send(:alias_method, :thanksgiving, :thanksgiving_day)

  def self.christmas_day year
    raise ArgumentError, "Invalid value for method #{__method__}: #{year.inspect}" unless year.is_a? Integer
    Date.new year, 12, 25
  end
  self.singleton_class.send(:alias_method, :xmas, :christmas_day)
end
