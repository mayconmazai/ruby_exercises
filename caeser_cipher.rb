def cipher(string, factor)
    code = []
    for letter in string.bytes
        if letter + factor > 122 || letter + factor > 90 && letter + factor < 96
            code << letter + factor - 26
        elsif letter.between?(65, 90) || letter.between?(97, 122)
            code << letter + factor
        else
            code << letter
        end
    end
    puts code.pack('C*')
end
cipher("What a string!", 5) # => "Bmfy f xywnsl!")