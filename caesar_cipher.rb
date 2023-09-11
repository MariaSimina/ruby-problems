def caesar_cipher(string, key)
    string = string.split("")

    string.map! do |letter|
        character = letter.ord
        base = character < 91? 65: 97
        if character.between?(65, 90) || character.between?(97, 122)
            letter = (character - base + key) % 26 + base
        else
            letter
        end
    end
    string.map! {|number| number.chr}
    result = string.join
    p result
end

caesar_cipher("Zbb!!", 5)