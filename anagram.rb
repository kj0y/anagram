require_relative 'reverse_letters'

def find_anagram(word)

    result = []

    # Create 'dictionary' by reading word list into array
    dictionary = File.open('wordlist').read.split(/\n/)

    # Sort each word in the dictionary alphabetically (not complete)
    alph_dictionary = []
    dictionary.each do |a|
        alph_dictionary.push(a.chars.sort.join)
    end

    # Use a loop to check each dictionary entry for a match
    alph_dictionary.each do |x|
        # If the alphabetized dictionary word matches our alphabetized word
        if x == word.chars.sort.join
            # Find the index
            i = alph_dictionary.index(x)
            # Look up the match in the original dictionary
            r = dictionary[i]
            # Add to result
            result.push(r)
        end
    end
    
    # Return anagrams
    print result

end

find_anagram("tap")