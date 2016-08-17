$years = 10
$days = 365
$hours = 24
$minutes = 60
$seconds = 60

def hours_in_year()

	return $days * $hours

end

def minutes_in_decade()

	return $years * $days * $hours * $minutes

end

def seconds_old(years)

	return years * $days * $hours * $minutes * $seconds

end

def seconds_to_years(seconds)

	return seconds / $minutes / $hours / $days 

end

puts hours_in_year()
puts minutes_in_decade()
puts seconds_old(17)
puts seconds_to_years(1246000000)
