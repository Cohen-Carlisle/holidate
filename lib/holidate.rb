require 'date'

class Holidate
  class << self

    undef_method(:new)

    def find(nth_, wday_, month_, year_=Date.today.year)
      nth = nth_int(nth_)
      wday = wday_int(wday_)
      month = month_int(month_)
      year = year_int(year_)
      if nth > 0
        Date.new(year, month, (1 + (nth - 1) * 7 + (wday - Date.new(year, month, 1).wday) % 7))
      else
        days_in_month = ((Date.new(year, month) >> 1) - 1).day
        Date.new(year, month, (days_in_month - (-nth - 1) * 7 - (Date.new(year, month, days_in_month).wday - wday) % 7))
      end
    end

    def new_years_day(year=Date.today.year)
      Date.new(year, 1, 1)
    end
    alias_method(:new_year, :new_years_day)

    def martin_luther_king_jr_day(year=Date.today.year)
      find('third', 'monday', 'january', year)
    end
    alias_method(:mlk, :martin_luther_king_jr_day)

    def washingtons_birthday(year=Date.today.year)
      find('third', 'monday', 'february', year)
    end
    alias_method(:washington, :washingtons_birthday)

    def memorial_day(year=Date.today.year)
      find('last', 'monday', 'may', year)
    end
    alias_method(:memorial, :memorial_day)

    def independence_day(year=Date.today.year)
      Date.new(year, 7, 4)
    end
    alias_method(:july_4, :independence_day)

    def labor_day(year=Date.today.year)
      find('first', 'monday', 'september', year)
    end
    alias_method(:labor, :labor_day)

    def columbus_day(year=Date.today.year)
      find('second', 'monday', 'october', year)
    end
    alias_method(:columbus, :columbus_day)

    def veterans_day(year=Date.today.year)
      Date.new(year, 11, 11)
    end
    alias_method(:veteran, :veterans_day)

    def thanksgiving_day(year=Date.today.year)
      find('fourth', 'thursday', 'november', year)
    end
    alias_method(:thanksgiving, :thanksgiving_day)

    def christmas_day(year=Date.today.year)
      Date.new(year, 12, 25)
    end
    alias_method(:xmas, :christmas_day)

    protected

    def nth_int(nth_)
      h = { 'first' => 1, 'second' => 2, 'third' => 3, 'fourth' => 4, 'fifth' => 5, 'last' => 1 }
      nth = nth_.to_s.downcase
      nth_int = (nth.to_i == 0 ? h[nth.split(/[-_ ]/).first] : nth.to_i)
      nth.end_with?('last') ? -nth_int : nth_int
    end

    def wday_int(wday)
      h = { 'sun' => 0, 'mon' => 1, 'tue' => 2, 'wed' => 3, 'thu' => 4, 'fri' => 5, 'sat' => 6 }
      (0..6).include?(wday) ? wday : h[wday.to_s.downcase[0..2]]
    end

    def month_int(month)
      h = { 'jan' => 1, 'feb' => 2, 'mar' => 3, 'apr' => 4, 'may' => 5, 'jun' => 6, 'jul' => 7, 'aug' => 8, 'sep' => 9, 'oct' => 10, 'nov' => 11, 'dec' => 12 }
      (1..12).include?(month) ? month : h[month.to_s.downcase[0..2]]
    end

    def year_int(year)
      year.to_s.to_i
    end
  end
end
