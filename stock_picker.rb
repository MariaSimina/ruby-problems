def stock_picker(array)
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
            diff["#{index}, #{second_index}"] = difference unless difference >= 0
        end
    end
    sorted = diff.sort_by {|key, value| value }.first
    result = sorted[0].split(", ").map{ |number| number.to_i}
    p result
end

stock_picker([17,3,6,9,15,8,6,1,10])