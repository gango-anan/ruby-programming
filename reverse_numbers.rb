# frozen_string_literal: true

def reverse_number(num)
  reversed = 0
  while num.positive?
    last_digit = num % 10
    reversed = reversed * 10 + last_digit
    num /= 10
  end
  reversed
end

p reverse_number(1986)
