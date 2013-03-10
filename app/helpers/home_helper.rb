module HomeHelper
  require 'time_diff'
  
  # Time until match
  # If day is below 1 and hours are below 18, shows actual time until
  # if week is greater than or equal to 1, show amount of weeks
  # if day is 1 or hours is greater than or equal to 18, say "tomorrow"
  # if day is more than 1, show amount of days
  def time_until_match(match)
    time_until = Time.diff(Time.now, match.start_time)
    if time_until[:day] < 1 and time_until[:hour] < 18
      time_until = Time.diff(Time.now, match.start_time, '%h:%m:%s')
      time_until[:diff]
    elsif time_until[:week] >= 1
      time_until = Time.diff(Time.now, match.start_time, '%w')
      time_until[:diff]
    elsif time_until[:day] == 1 or (time_until[:hour] >= 18 and time_until[:day] == 0)
      "Tomorrow"
    elsif time_until[:day] > 1 
      time_until = Time.diff(Time.now, match.start_time, '%d')
      time_until[:diff]
    end
  end
end
