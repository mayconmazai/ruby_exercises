def simple_short_cipher(string, factor)
    alphabet = ('a'..'z').to_a
    code = []
    string.each_char do |char|
        if alphabet.index(char)
            code << alphabet[(alphabet.index(char) + factor) % alphabet.length]
        elsif alphabet.index(char.downcase) && char.upcase
            code << alphabet[(alphabet.index(char.downcase) + factor) % alphabet.length].upcase
        else
            code << char
        end
    end
    return code.join
end
puts simple_short_cipher("What a string!", 5) # => "Bmfy f xywnsl!"

def simple_cipher(string, factor)
    lower_case = ('a'..'z').to_a
    upper_case = ('A'..'Z').to_a
    code = []
    string.each_char do |char|
        if lower_case.include?(char) 
            result = lower_case.index(char) + factor
            if result > lower_case.length
                result = result - lower_case.length
                code << lower_case[result]
            else
                code << lower_case[result]
            end
            
        elsif upper_case.include?(char)
            result = upper_case.index(char) + factor
            if result > upper_case.length
                result = result - upper_case.length
                code << upper_case[result]
            else
                code << upper_case[result]
            end
        else
            code << char
        end
    end
    return code.join
end
puts simple_cipher("What a string!", 5) # => "Bmfy f xywnsl!"

def cipher(string, factor)
    code = []
    string.bytes.each do |letter|
        if letter + factor > 122 || letter + factor > 90 && letter + factor < 96
            code << letter + factor - 26
        elsif letter.between?(65, 90) || letter.between?(97, 122)
            code << letter + factor
        else
            code << letter
        end
    end
    return code.pack('C*')
end
puts cipher("What a string!", 5) # => "Bmfy f xywnsl!"

def caeser_cipher(string, factor)
    code = []
    string.bytes.each do |letter|
            code << letter + factor 
    end
    return code.pack('C*')
end
puts caeser_cipher("What a string!", 5) # => "\mfy%f%xywnsl&"

def simple_short_decipher(string, factor)
    alphabet = ('a'..'z').to_a
    code = []
    string.each_char do |char|
        if alphabet.index(char)
            code << alphabet[(alphabet.index(char) - factor) % alphabet.length]
        elsif alphabet.index(char.downcase) && char.upcase
            code << alphabet[(alphabet.index(char.downcase) - factor) % alphabet.length].upcase
        else
            code << char
        end
    end
    return code.join
end
puts simple_short_decipher("Bmfy f xywnsl!", 5) # => "What a string!"