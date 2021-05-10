require "minitest/autorun"
describe "test" do 
  it "test" do
    assert_equal 1, (min_boats([70, 70], 200))
    assert_equal 1, (min_boats([70, 50, 70], 200))
    assert_equal 2, (min_boats([200, 200], 200))
    assert_equal 3, (min_boats([100, 200, 150, 80], 200))
    assert_equal 3, (min_boats([100, 80, 30, 150, 80], 200))
  end
end

def min_boats(weights, limit)
    boats = 0
    check = 0
    index = 0
  
    # until index == weights.size
    weights.each do |x|
      check += weights[index] 
      # weights.delete_at(index)
      if check + weights[index] >= limit
        boats += 1
        check = 0
      end
      index += 1
    end
    p boats
  end
