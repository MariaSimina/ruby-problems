def stock_picker(array)
    greatest_difference = 0
    result_array = []
    diff = {}

    (0..array.length-1).each do |index|
        (1..array.length-1).each do |second_index|
            if index == array.length - 1
                next
            end
            if second_index <= index
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
    p greatest_difference
    p result_array
end

stock_picker([17,3,6,9,15,8,6,1,10])