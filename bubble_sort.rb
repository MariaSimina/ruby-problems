# frozen_string_literal: true

def bubble_sort(array)
  loop do
    swapped = false
    (array.length - 1).times do |index|
      if array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
        swapped = true
      end
    end
    break if swapped == false
  end
  array
end

bubble_sort([4, 3, 78, 2, 0, 2])
