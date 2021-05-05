require "minitest/autorun"
describe "test" do 
  it "test" do
    assert_equal true, (check_possibility([10, 5, 7]))
    assert_equal true, (check_possibility([1, 6, 2]))
    assert_equal false, (check_possibility([10, 5, 1]))
    assert_equal false, (check_possibility([100, 55, 45]))
  end
end

def check_possibility(nums)
    num_diff = nums.each_cons(2).count {|x, y| (x - y) > 0}  
    num_2_diff = nums.each_cons(3).count {|x, y, z| (x - z) > 0}  
    result = (num_diff <= 1 && num_2_diff <= 1)  
end

p check_possibility([10, 5, 7])