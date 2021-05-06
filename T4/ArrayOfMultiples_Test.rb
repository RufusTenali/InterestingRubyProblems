require "minitest/autorun"
describe "test" do 
  it "test" do
    assert_equal [7, 14, 21, 28, 35], (array_of_multiples(7, 5))
    assert_equal [12, 24, 36, 48, 60, 72, 84, 96, 108, 120], (array_of_multiples(12, 10))
    assert_equal [17, 34, 51, 68, 85, 102], (array_of_multiples(17, 6))
  end
end

def array_of_multiples(x, y)
    array = []
    count = 1
    index = 0
    until count > y
      array[index] = x * count
      count += 1
      index += 1
    end
    p array
  end
  
  # array_of_multiples(12, 10)