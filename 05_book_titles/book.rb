class Book
    attr_reader :title

    def title=(string)
        little_words = ["a", "an", "and", "the", "in", "of"]
        array = string.split()
        i = 0
        while i < array.length
            if !(little_words.include?(array[i]) and i != 0)
                array[i] = array[i].capitalize
            end
            i = i + 1
        end
        new_title = array.join(" ")
        @title = new_title
    end
end
