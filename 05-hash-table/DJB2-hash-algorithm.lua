-- DJB2 hash function
function DJB2_hash(str)
    local hash = 5381
    
    for i = 1, #str do
        hash = hash * 33 + string.byte(str, i)
    end

    return hash
end