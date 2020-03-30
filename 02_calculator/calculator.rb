#write your code here
def add(num1, num2)
    sum = num1 + num2
    return sum
end

def subtract(num1, num2)
    difference = num1 - num2
    return difference
end

def sum(arr)
    if arr.length == 0
        return 0
    else
        sum = 0
        arr.each {
            |i| sum = sum + i
        }
        
        return sum
    end
end

def multiply(arr)
    if arr.length == 0
        return 0
    else
        product = 0
        arr.each {
            |i| product = product + i
        }
        
        return product
    end
end

