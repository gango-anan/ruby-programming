puts "Hello, Gango"
puts "===================================="
y=3
puts y.to_s(2)

PI = 3.14
r = 2.0
area = PI*r*r
puts area
PI = 3.0
r = 3.0
area = PI*r*r
puts area

a,b,c,d,e = 1,2,3,4,5
puts a
puts b
puts c
puts d
puts e

puts a.kind_of? Float
puts PI.class

puts a.to_f
puts c.to_s(2)
puts 8.to_s(8)

puts 10.to_s(16)

#Hashs
days_of_week = {
	:mon => "Monday",
	:tue => "Tuesday",
	:wed => "Wednesday",
	:thu => "Thursday",
	:fri => "Friday",
	:sat => "Saturday",
	:sun => "Sunday"
}

puts days_of_week[:tue] , days_of_week[:thu] , days_of_week[:sun] 

puts "======================================================================="
#Working with case

def get_day_name (day) 
	day_name = ""
	case day
		when "mon"
			day_name= "Monday"
		when "tue"
			day_name= "Tuesday"
		when "wed"
			day_name= "Wednesday"
		when "thu"
			day_name= "Thursday"
		when "fri"
			day_name= "Friday"
		when "sat"
			day_name= "Saturday"
		when "sun"
			day_name= "Sunday"
		else
			day_name = "Invalid day alias"
	end
	return day_name
end

puts  get_day_name("thu") 
