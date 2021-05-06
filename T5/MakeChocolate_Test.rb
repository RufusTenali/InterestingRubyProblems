require "minitest/autorun"
describe "test" do 
  it "test" do
    assert_equal 4, (make_chocolate(4, 1, 9))
    assert_equal -1, (make_chocolate(4, 1, 10))
    assert_equal 2, (make_chocolate(4, 1, 7))
  end
end


def make_chocolate(smallb, bigb, goal)
    totalb = smallb + (bigb * 5)
    if totalb != goal    
      totalb - goal
    else 
      p smallb
    end 
end

# p make_chocolate(4, 1, 7)