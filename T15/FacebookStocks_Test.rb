require "minitest/autorun"
describe "test" do 
  it "test" do
    assert_equal 5, (stocks([9, 11, 8, 5, 7, 10]))
    assert_equal 1, (stocks([2, 1, 18, 8, 90, 24]))
    assert_equal 11, (stocks([23, 11, 19, 18, 45, 35]))
  end
end

def stocks(array)
    min = array.min
    size = array.size
    index = array.find_index(min)
    # p "buy at low: #{min}"
    # # p index
    # p "sell at high at: #{array[index..size].max}"
    p min
  end
  
  # stocks([9, 11, 8, 5, 7, 10])