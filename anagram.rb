require_relative 'reverse_letters'

def find_anagram(word)

    result = []

    # Create 'dictionary' by reading word list into array
    dictionary = File.open('wordlist').read.split(/\n/)

    # Sort each word in the dictionary alphabetically and save to a new array
    alph_dictionary = []
    dictionary.each do |words|
        alph_dictionary.push(words.chars.sort.join)
    end

    # Get the index of each of the word matches
    matches_index = []
    alph_dictionary.each_with_index do |alph_word, index|
        if alph_word == word.chars.sort.join
            matches_index.push(index)
        end
    end

    # Find words in the alphabetized dictionary that match our alphabetized word's index
    for i in matches_index
        result.push(dictionary[i])
    end

    # Return anagrams
    print result

end

find_anagram("cat")