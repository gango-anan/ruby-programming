# frozen_string_literal: true

# Optimized Bubble_Sort
def bubble_sort_algo(array)
  return array if array.length <= 1

  is_sorted = false
  n = array.length
  pass = 0
  while pass < n
    is_sorted = true
    step = 1
    while step < (n - pass)
      if array[step - 1] > array[step]
        array[step - 1], array[step] = array[step], array[step - 1]
        is_sorted = false
      end
      step += 1
    end
    return array if is_sorted

    pass += 1
  end
  array
end

print bubble_sort_algo([1, 2, 3, 4, 5, 6, 7, 8, 9])
puts

def bubble_sort_algo_by(array)
  return array if array.length <= 1

  is_sorted = false
  n = array.length
  pass = 0
  while pass < n
    is_sorted = true
    step = 1
    while step < (n - pass)
      if yield(array[step - 1], array[step]).positive?
        array[step - 1], array[step] = array[step], array[step - 1]
        is_sorted = false
      end
      step += 1
    end
    return array if is_sorted

    pass += 1
  end
  array
end

gango = bubble_sort_algo_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end

p gango
