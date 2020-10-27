def bubble_sort_by(array)
  n = array.length
  loop do
    switched = false
    (n - 1).times do |x|
      result = yield array[x], array[x + 1]
      if result.positive?
        array[x], array[x + 1] = array[x + 1], array[x]
        switched = true
      end
    end
    n -= 1
    break unless switched == true
  end
  array
end

p bubble_sort_by(%w[Longest Misori Anas Lameck Binyam Cy Sinan]) { |left, right| left.length - right.length }
