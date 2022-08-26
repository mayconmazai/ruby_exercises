def bubble_sort(input)
    range = input.length - 2
    puts input.length
    puts range
    while range > 0
        
        for i in 0..range
            puts input.join(" ")
            if input[i].to_i > input[i + 1].to_i
                input[i], input[i + 1] = input[i + 1], input[i]
            end
        end
        
        range -= 1
    end
    return input.join(" ")
end

bubble_sort([4,3,78,2,0,1])

