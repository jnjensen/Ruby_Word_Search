def case_erase (obj)
    if obj.is_a?(Array)
        obj = obj.join(" ")
    end

    obj = obj.downcase
    obj = obj.split(" ")
    return obj
end

def counting_strings (str, dictionary)
    new_array = case_erase(str)
    dictionary = case_erase(dictionary)
    new_hash = Hash.new
    
    dictionary.each do |key|
        num = 0
        new_array.each do |compare|
            if compare.include?(key)
                num += 1
            end
        end
        if num >= 1
            new_hash[key] = num
        end
    end

    return new_hash
end

dictionary = ["Boo", "who", "you", "boy", "bored", "bo"]

puts counting_strings("boo who", dictionary)