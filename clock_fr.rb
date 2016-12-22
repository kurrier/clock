#! /usr/bin/ruby
require 'date'

$max_heures = 24
$max_mins = 60
$max_secs = 60

a_heure = 16
a_min = 30
a_sec = 00
a_jour = 5
calc_a1 = (a_heure * $max_mins) + a_min
calc_a2 = (calc_a1 * $max_secs) + a_sec
puts "Heure de fin: #{a_heure}:#{a_min}:#{a_sec}"

jour = Date.today.strftime("%A")
time = Time.new
b_heure = time.hour
b_min = time.min
b_sec = time.sec
b_jour = time.wday
calc_b1 = (b_heure * $max_mins) + b_min
calc_b2 = (calc_b1 * $max_secs) + b_sec
puts "Heure actuelle: #{b_heure}:#{b_min}:#{b_sec}"

puts
déjeuner_heure = 12
if b_heure >= déjeuner_heure
	print "Déjeuner Déjà!"
	else
	déjeuner_calc = (déjeuner_heure * $max_mins) * $max_secs
	déjeuner_time = déjeuner_calc - calc_b2
	print "Déjeuner Dans: "
	print (Time.mktime(0)+déjeuner_time).strftime("%H heures %M minutes et %S secondes")
end

puts
puts
print "Laisser dans: "
if calc_a2 > calc_b2
	@quit_calc = calc_a2 - calc_b2
	else
	@quit_calc = calc_b2 - calc_a2
	end
print (Time.mktime(0)+@quit_calc).strftime("%H heures %M minutes et %S secondes")

print "\n"
puts
print "Fin de semaine: "
if a_jour > b_jour
	jour_calc1 = a_jour - b_jour
	jour_calc2 = (((jour_calc1 * $max_heures) * $max_mins) * $max_secs) + @quit_calc
	print (Time.mktime(0)+jour_calc2).strftime("%d jours %H heures %M minutes et %S secondes")
	elsif a_jour == b_jour
	print (Time.mktime(0)+@quit_calc).strftime("0 jours %H heures %M minutes et %S secondes")
	
	else
	jour_calc1 = b_jour - a_jour
	jour_calc2 = (((jour_calc1 * $max_heures) * $max_mins) * $max_secs) + @quit_calc
	print (Time.mktime(0)+jour_calc2).strftime("%d jours %H heures %M minutes et %S secondes")
end
