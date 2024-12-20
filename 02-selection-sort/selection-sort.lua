-- finds the index of the smallest value in the "array"
function Find_smaller (arr)
    local small = arr[1]
    local small_index = 1

    for i = 2, #arr do
        if arr[i] < small then
            small = arr[i]
            small_index = i
        end
    end

    return small_index
end

-- sort algorithm
function Selection_sort (arr)
    local sorted_arr = {}

    for i = 1, #arr do
        local smallest_index = Find_smaller(arr)

        sorted_arr[i] = arr[smallest_index]
        table.remove(arr, smallest_index)
    end

    return sorted_arr
end

local sorted_arr = Selection_sort({3,5,2,7,2,5,322,7,21,15,95,3,1,9})

for i, v in ipairs(sorted_arr) do
    print(i, v)
end
