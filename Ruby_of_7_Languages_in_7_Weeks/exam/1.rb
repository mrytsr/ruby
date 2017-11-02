def avg array
    sum = 0
    if array.size == 0
        return 0
    end
    array.each{|x| sum = sum + x}
    # sum/=array.size
    # array.size
    sum/1.0/array.size
end
