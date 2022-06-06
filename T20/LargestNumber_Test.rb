require "minitest/autorun"
describe "test" do 
  it "test" do
    assert_equal 77641510, (largest_number([10, 7, 76, 415]))
    assert_equal 54321, (largest_number([1, 2, 3, 4, 5]))
    assert_equal 76521, (largest_number([7, 2, 5, 6, 1]))
    assert_equal 7763512017, (largest_number([17, 20, 63, 51, 77]))
  end
end

def largest_number(nums)
    copy = nums.sort! {|a, b| b.to_s+a.to_s <=> a.to_s+b.to_s}
    if copy[0] == 0
         return "0"
    end    
    p copy.join('').to_i
end

# p largest_number([10, 7, 76, 415])