def largest_number(nums)
    copy = nums.sort! {|a, b| b.to_s+a.to_s <=> a.to_s+b.to_s}
    if copy[0] == 0
         return "0"
    end    
    copy.join('').to_i
end

p largest_number([10, 7, 76, 415])