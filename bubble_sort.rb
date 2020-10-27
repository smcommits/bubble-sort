def bubble_sort(array)
  n = array.length
  loop do
    switched = false
    (n - 1).times do |x|
      if array[x] > array[x + 1]
        array[x], array[x + 1] = array[x + 1], array[x]
        switched = true
      end
    end
    n -= 1
    break unless switched == true
  end
  array
end

p bubble_sort([9, 23, 8, 11, 6, 9, 4, 3, 1])
