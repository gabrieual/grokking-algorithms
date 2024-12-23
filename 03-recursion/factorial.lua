-- factorial function
function Factorial(i)
    
    if i <= 1 then
        return 1
    end

    return i * Factorial(i-1)
end

print(Factorial(10))