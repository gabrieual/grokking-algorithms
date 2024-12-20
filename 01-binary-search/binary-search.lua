-- binary searcher in lua
function binary_search (table, target, low, high)
    local low = low or 1
    local high = high or #table
    if low < high then
        return nil
    end
    local mid = math.floor((low + high) / 2)

    if table[mid] == target then
        return mid
    
    elseif table[mid] > target then
        high = mid -1
    
    elseif table[mid] < target then
        low = mid + 1
    
    end

    return binary_search(table, target, low, high)
end

local arr = {1, 2, 3, 4, 5, 6, 7, 9, 11, 12, 14, 15, 17, 19, 22, 25, 27, 28, 29, 33, 34}
print(binary_search(arr, 30))