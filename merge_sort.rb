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
#        print "first half"
#        p arr[0..half-1]
        
        x = merge_sort(arr[0..half-1])
#        print "x arr"
#        p x
#        print "second half"
#        p arr[(half)..-1]
        y = merge_sort(arr[(half)..-1])
#        print "y arr"
 #       p y
        x,y,new_arr = first_half_loop(x,y,new_arr)
        new_arr = new_arr + y + x
#        print "new arr"
#        p new_arr
        new_arr
    end
    
end

def first_half_loop(x,y,new_arr)
    temp_x = x.dup
    temp_x.each do |n|
        x,y,new_arr = second_half_loop(x,y,n,new_arr)
    end
    return x,y,new_arr
    
end

def second_half_loop (x,y,n,new_arr)
        temp_y = y.dup
        temp_y.each do |m|
            if n > m
                new_arr<<m
                y.delete(m)
#                print "y"
 #               p y
            else
                new_arr<<n
                x.delete(n)
                return x,y,new_arr
            end
        end
        return x,y,new_arr
end


arry = []
40.times do
    arry << rand(100)
end

p arry
p merge_sort(arry)
