#takes in an array of 2 letters and returns an array of 2 letters
def reverse_letters(word)
    reversed_letters = []
    index = word.length - 1 #since we start at 0
    
    loop do
        reversed_letters << word[index]
        index -= 1
        break if index < 0
    end

    reversed_letters
    
end