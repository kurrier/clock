#! /usr/bin/ruby

$max_hours = 24
$max_mins = 60
$max_secs = 60

a_hours = 16
a_mins = 30
a_secs = 00
puts "End Time: #{a_hours}:#{a_mins}:#{a_secs}"

time = Time.new
b_hours = time.hour
b_mins = time.min
b_secs = time.sec
puts "Current Time: #{b_hours}:#{b_mins}:#{b_secs}"

puts

if a_secs >= b_secs
	ab_secs = a_secs - b_secs
	else 
	ab_secs = $max_secs - b_secs
	end

if a_mins >= b_mins
	ab_mins = a_mins - b_mins
	else 
	ab_mins = $max_mins - b_mins
	end

if a_hours >= b_hours
	ab_hours = a_hours - b_hours
	else 
	ab_hours = b_hours - a_hours
	end

puts "Quitting Time In: #{ab_hours} hours #{ab_mins} minutes and #{ab_secs} seconds"
