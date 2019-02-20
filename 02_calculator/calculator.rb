def add a, b
    return a + b
end

def subtract a, b
    return a - b
end

def sum array
    result = 0
    i = 0
    if array == []
        return 0
    else
        while i < array.length
            result = result + array[i]
            i = i + 1
        end
    end
    return result
end

def multiply (*args)
    i = 0
    result = 1
    while i < args.length
        result = result * args[i]
        i = i + 1
    end
    return result
end

def power a,b
    return a ** b
end

def factorial num
    if num == 0
        return 1
    elsif num == 1
        return 1
    else
        return num * factorial(num - 1)
    end
end