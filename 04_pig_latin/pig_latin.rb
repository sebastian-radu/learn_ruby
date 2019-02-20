def translate string
    vowels = ["a", "e", "i", "o", "u"]
    words = string.split
    j = 0
    result = []
    while j < words.length
        if (!vowels.include?(words[j][0]))
            count = 0
            i = 0
            array = words[j].split("")
            while (!vowels.include?(array[i]) or (array[i] == "u" and array[i - 1] == "q"))
                count = count + 1
                i = i + 1
            end
            first_half = array.slice(0, count)
            second_half = array.slice(count, array.length - 1)
            to_push = second_half.join("") + first_half.join("") + "ay"
        else
            to_push = words[j] + "ay"
        end
        result.push(to_push)
        j = j + 1
    end
    return result.join(" ")
end
