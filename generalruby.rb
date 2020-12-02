# frozen_string_literal: true

num_array = []
puts 'Enter 5 elements of the array, press enter after each element:'
num_array[0] = gets.chomp.to_i
num_array[1] = gets.chomp.to_i
num_array[2] = gets.chomp.to_i
num_array[3] = gets.chomp.to_i
num_array[4] = gets.chomp.to_i
puts '=============================='
puts num_array

puts '==================================='

states = {
  'PA' => 'Pennsylvania',
  'NY' => 'New York',
  'IA' => 'Iowa',
  'OR' => 'Oregon'
}

puts states
puts states['IA']

puts '=========================================================='

def sayhi(name1, name2)
  ["Hi #{name1}", "Hi #{name2}"]
end

first_name = 'Gango'
second_name = 'Anan'

puts sayhi(first_name, second_name)

puts('======================================================')

def max(num1, num2, num3)
  if (num1 >= num2) && (num1 >= num3)
    num1
  elsif (num2 >= num1) && (num2 >= num3)
    num2
  else
    num3
  end
end

puts max(1, 5, 2)

(0..5).each do |count|
  puts count
end

6.times do |index|
  puts index
end
