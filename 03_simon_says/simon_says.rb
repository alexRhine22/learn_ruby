#write your code here
def echo(input)
    return input
end 

def shout(input)
    return input.upcase
end

def repeat(input, num = 2)
    output_str = "#{(input + " ") * num}" 

    output_str = output_str[0..output_str.length - 2] # remove ending space

    return output_str
end

def start_of_word(word, letter_num)
    str = word[0, letter_num]
    return str
end 

def first_word(str)
    answer = str.split.first  
    return answer
end

def titleize(str)
    arr = []
    little_words = ['and', 'over', 'the']
    str.split.each do |word|
        if little_words.include?(word)
            arr.push(word)
        else
            arr.push(word.capitalize)
        end
    end
    arr[0].capitalize!
    arr.join(' ')
end
