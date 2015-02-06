# Holidate

A simple gem that returns Date objects for holidays

# Usage

Currently has methods to find the 10 US federal holidays, with year as an optional argument that defaults to the current year.
```ruby
Holidate.new_years_day              # alias: new_year
Holidate.martin_luther_king_jr_day  # alias: mlk
Holidate.washingtons_birthday       # alias: washington
Holidate.memorial_day               # alias: memorial
Holidate.independence_day           # alias: july_4
Holidate.labor_day                  # alias: labor
Holidate.columbus_day               # alias: columbus
Holidate.veterans_day               # alias: veteran
Holidate.thanksgiving_day           # alias: thanksgiving
Holidate.christmas_day              # alias: xmas
```

Also has a ::find method that allows you to find the nth day of the week in a given month and year.
```ruby
Holidate.find '1st', 'Friday', 'December', '1985'
```

You can also find the nth to last day.
```ruby
Holidate.find :third_to_last, :wed , :oct, :'2013'
```

::find is case-insensitive and accepts both strings and symbols.
It also accepts abbreviations for months and days of the week and allows first, second, etc. to be abbreviated as 1st, 2nd, etc.
You can also give ::find integers. Day of the week and month should correspond to Date#wday and Date#month, respectively.
```ruby
Holidate.find -1, 0, 7, 1985 # == Holidate.find 'last', 'Sunday', 'July', '1985'
```

Of course, magic numbers can make code harder to understand, so use with caution.
