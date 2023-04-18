def caesar_cipher ( a_string, the_shift)
    string_array = a_string.split("")
    new_array = []
    string_array.each do |the_char|
        new_char = the_char.ord + the_shift
        if the_char.ord < 97 && new_char > 90
            new_char -= 26
        end
        if the_char.ord > 96 && new_char > 122
            new_char -= 26
        end
        new_array.push(new_char.chr)        
    end
    return new_array.to_s
end
