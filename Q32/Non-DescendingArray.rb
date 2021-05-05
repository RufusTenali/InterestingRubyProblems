def check_possibility(nums)
    num_diff = nums.each_cons(2).count {|x, y| (x - y) > 0}  
    num_2_diff = nums.each_cons(3).count {|x, y, z| (x - z) > 0}  
    result = (num_diff <= 1 && num_2_diff <= 1)  
end

p check_possibility([100, 55, 45])