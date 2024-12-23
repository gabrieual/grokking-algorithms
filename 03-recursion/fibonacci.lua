-- recursive fibonacci
function fibonacci(i)
    if i <= 2 then
        return 1
    end

    return fibonacci(i-1) + fibonacci(i-2)
end

print(fibonacci(10))