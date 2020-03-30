#write your code here
def translate(str)
    vowels_arr = ['a', 'e', 'i', 'o', 'u']
    answer = ""
    if (vowels_arr.include?(str[0]))
        answer = str + "ay"
    end

    return answer
end