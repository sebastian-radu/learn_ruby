def echo word
    return word
end

def shout word
    return word.upcase
end

def repeat (*args)
    if args.length == 1
        return args[0] + " " + args[0]
    elsif args.length == 2
        repeats = 0
        array = []
        while repeats < args[1]
            array.push(args[0])
            repeats = repeats + 1
        end
        return array.join(" ")
    end
end

def start_of_word (string, num)
    array = string.split("")
    array = array.slice(0, num)
    return array.join("")
end

def first_word string
    return string.split[0]
end

def titleize string
    array = string.split
    i = 0
    while i < array.length
        if !((array[i] == "the" or array[i] == "and" or array[i] == "over") and i != 0)
            array[i] = array[i].downcase.capitalize
        end
        i = i + 1
    end
    return array.join(" ")
end