def substrings(string, array)
    result = Hash.new(0)
    string = string.downcase.split(" ")

    array.each do |part|
        string.each do |word|
            if word.include?(part)
                result[part] += 1
            end
        end
    end

end

dictionary = ["below","down","go","going","horn", "how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)