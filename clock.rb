#! /usr/bin/ruby
require 'date'

$max_hours = 24
$max_mins = 60
$max_secs = 60

a_hour = 16
a_min = 30
a_sec = 00
a_day = 5
calc_a1 = (a_hour * $max_mins) + a_min
calc_a2 = (calc_a1 * $max_secs) + a_sec
puts "End Time: #{a_hour}:#{a_min}:#{a_sec}"

day = Date.today.strftime("%A")
time = Time.new
b_hour = time.hour
b_min = time.min
b_sec = time.sec
b_day = time.wday
calc_b1 = (b_hour * $max_mins) + b_min
calc_b2 = (calc_b1 * $max_secs) + b_sec
puts "Current Time: #{b_hour}:#{b_min}:#{b_sec}"

puts
lunch_hour = 12
if b_hour >= lunch_hour
	print "Lunch Already!"
	else
	lunch_calc = (lunch_hour * $max_mins) * $max_secs
	lunch_time = lunch_calc - calc_b2
	print "Lunch In: "
	print (Time.mktime(0)+lunch_time).strftime("%H hours %M minutes and %S seconds")
end

puts
puts
print "Quitting Time In: "
if calc_a2 > calc_b2
	@quit_calc = calc_a2 - calc_b2
	else
	@quit_calc = calc_b2 - calc_a2
	end
print (Time.mktime(0)+@quit_calc).strftime("%H hours %M minutes and %S seconds")

print "\n"
puts
print "Weekend In: "
if a_day > b_day
	day_calc1 = a_day - b_day
	day_calc2 = (((day_calc1 * $max_hours) * $max_mins) * $max_secs) + @quit_calc
	print (Time.mktime(0)+day_calc2).strftime("%d days %H hours %M minutes and %S seconds")
	elsif a_day == b_day
	print (Time.mktime(0)+@quit_calc).strftime("0 days %H hours %M minutes and %S seconds")
	
	else
	day_calc1 = b_day - a_day
	day_calc2 = (((day_calc1 * $max_hours) * $max_mins) * $max_secs) + @quit_calc
	print (Time.mktime(0)+day_calc2).strftime("%d days %H hours %M minutes and %S seconds")
end
