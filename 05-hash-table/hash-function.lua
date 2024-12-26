-- simple hash function
function Hash(str)
    local hash = 0
    
    for i = 1, #str do
        hash = hash + string.byte(str, i)
    end

    return hash
end