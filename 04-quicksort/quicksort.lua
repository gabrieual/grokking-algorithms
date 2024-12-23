-- function to concatenate tables
function append (arr1, arr2)
    for i = 1, #arr2 do
        table.insert(arr1, arr2[i])
    end
    return arr1
end

-- quicksort
function quicksort (arr)
	
    if #arr < 2 then
		return arr
	end
	
    local pivo = arr[1]
    local lower, bigger = {}, {}

    for i = 2, #arr do
        if pivo > arr[i] then
            table.insert(lower, arr[i])
        else
            table.insert(bigger, arr[i])
        end
    end

    return append (quicksort (lower), append ({pivo}, bigger))
end

print(table.concat(quicksort({2, 1, 4, 6, 5, 8, 7}), ", "))