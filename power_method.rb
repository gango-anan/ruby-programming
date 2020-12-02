# frozen_string_literal: true

# Power method - Works for only positive exponents
def gango_pow(base, exp)
  power = 1
  exp.times do
    power *= base
  end
  power
end

puts gango_pow(2, 3)

puts '======================================='

counter = 5
counter.times do |count|
  puts count
end

puts '======================================='

counter.times do |count|
  puts count + 1
end
