### DateTime & Timezones ###

# datetime field in migration AND DateTime class in ruby
# DateTime object can be asked to format itself many dif ways

# datetime_local field in form 
  # gives you a string without a timezone --> feeding it to DateTime will default it to Greenwich mean --> unpredictable results >:0

# store everything in utc? --> when displaying (at last possible moment) --> format it  