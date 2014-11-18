def merge_sort(arr)
    new_arr = []
    if arr.length == 2
        if arr[0] > arr[1]
            arr[0],arr[1] = arr[1],arr[0]
            arr
        end
        arr
    elsif arr.length == 1
        arr
    else
        half = (arr.length)/2
        x = merge_sort(arr[0..half])
        y = merge_sort(arr[half..-1])
        x.each do |n|
            y.each do |m|
                if n > m
                    new_arr<<m
                    y.delete(m)
                else
                    new_arr<<n
                    break
                end
            end
        end
    end
    new_arr
end

arry = [9,7,3,2,6,4]
p merge_sort(arry)
