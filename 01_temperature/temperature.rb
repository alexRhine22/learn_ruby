#write your code here
def ftoc(ftemp)
    celcuis = (ftemp - 32.0) * (5.0 / 9.0)
    return celcuis
end

def ctof(ctemp)
    fahrenheit = (ctemp *  (9.0 / 5.0)) + 32
    return fahrenheit
end
