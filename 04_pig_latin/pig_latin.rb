#write your code here
def translate(str)
    vowels_arr = ['a', 'e', 'i', 'o', 'u'] # array of vowles
    
    word_array = str.split # take input string and turn it into an array

    word_array.map! { |word|    
        
        starting_consonants = 0 # variable for counting consonants
        
        if (word[0] == 'q' && word[1] == 'u')
            # if word starts with 'qu'
            starting_consonants = 1 # add 1 to starting_consonants to represent 'u' character
        elsif (!(vowels_arr.include?(word[0])) && word[1] == 'q' && word[2] == 'u')
            # if first letter is a consonant and next to letters are 'q' and 'u'
            starting_consonants = 1
        end

        word.split('').each { |letter|
            # loop through each word and count the amount of starting consonants
            if !(vowels_arr.include?(letter))
                starting_consonants = starting_consonants + 1
            else
                break
            end
        }      

        if (starting_consonants == 0)
            # if there are no starting consonants
            word = word + "ay" # add 'ay' to end of word
        elsif (starting_consonants > 0)  
            # if there are starting consonants
            word = word[starting_consonants...] + word[0..starting_consonants - 1] + "ay" # move starting consonants and add 'ay' to end of word
        end 
    }

    return word_array.join(" ")
end