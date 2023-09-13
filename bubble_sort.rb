def bubble_sort (array)
    (1..array.length - 1).each do
        swapped = false
        array.each_with_index do |number, index|
            if index == array.length - 1
                next
            end
            if number > array[index + 1]
                array[index], array[index + 1] = array[index + 1], array[index]
                swapped = true
            end
        end
        if swapped == false
            break
        end
    end
    array
end

bubble_sort([4,3,78,2,0,2])