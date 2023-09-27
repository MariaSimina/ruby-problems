# frozen_string_literal: true

def stock_picker(array)
  greatest_difference = 0
  result_array = []
  (0..array.length - 1).each do |index|
    (1..array.length - 1).each do |second_index|
      # so that it doesn't go over the array with the second_index
      # and so that it doesn't compare with days before the day of the buy
      if index == array.length - 1 || second_index <= index
        next
      end
      difference = array[index] - array[second_index]
      if greatest_difference > difference
        greatest_difference = difference
        result_array[0] = index
        result_array[1] = second_index
      end
    end
  end
  result_array
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
