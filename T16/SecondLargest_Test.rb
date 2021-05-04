require "minitest/autorun"
describe "test" do 
  it "test" do
    assert_equal 23, (second([54, 23, 11, 17, 10]))
    assert_equal 75, (second([26, 54, 89, 75, 21]))
    assert_equal 95, (second([56, 95, 65, 100, 3]))
    assert_equal 6, (second([1, 2, 3, 4, 5, 6, 7]))
    assert_equal 99, (second([100, 99, 98, 97, 96]))
  end
end

def second(array)
    array.sort!
    biggest = array.max
    first = array.find_index(biggest)
    second = first - 1
    p array[second]
  end
  
  second([54, 23, 11, 17, 10])