numbers = [9,8,1,2,4,6,7,5,0,3]


def merge_sort(arr)
    return arr if arr.length <= 1

    mid = arr.length / 2
    left = merge_sort(arr[0...mid])
    right = merge_sort(arr[mid...])

    merge(left, right)
end

def merge(left, right)
    sorted = []

    while !left.empty? && !right.empty?
        if left[0] <= right[0]
            sorted << left.shift
        else 
            sorted << right.shift
        end
    end

    sorted.concat(left).concat(right)
end

puts merge_sort(numbers)