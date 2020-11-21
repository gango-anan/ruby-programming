#THIS IS A SIMPLE CALCULATOR

puts "**** SIMPLE CALCULATOR WORKS WITH TWO NUMBERS *****"

puts "Enter the first number: "
num1 = gets.chomp().to_f
puts "Enter the operator"
opp = gets.chomp()
puts "Enter the second number: "
num2 = gets.chomp().to_f

if opp== "+"
	sum = num1+num2
	puts "The Sum of #{num1} and #{num2} is #{sum}"
elsif opp== "-"
	difference = num1 - num2
	puts "The Difference of #{num1} and #{num2} is #{difference}"
elsif opp== "/"
	division = num1/num2
	puts "The Division of #{num1} and #{num2} is #{division}"
elsif opp== "*"
	product = num1*num2
	puts "The Product of #{num1} and #{num2} is #{product}"
else
	puts "Invalid operator"
end