require "minitest/autorun"
describe "test" do 
  it "test" do
    assert_equal 0, (bunny_ear(0))
    assert_equal 2, (bunny_ear(1))
    assert_equal 4, (bunny_ear(2))
    assert_equal 14, (bunny_ear(7))
    assert_equal 38, (bunny_ear(19))
    assert_equal 42, (bunny_ear(21))
  end
end

def bunny_ear(b)
    if b == 0
      return 0
    else
      return 2 + bunny_ear(b-1)
    end
  end
  
  # p bunny_ear(10)