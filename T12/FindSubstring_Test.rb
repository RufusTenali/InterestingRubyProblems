require "minitest/autorun"
describe "test" do 
  it "test" do
    assert_equal [0, 13], (find_string(["cat", "dog"], "dogcatcatcodecatdog"))
    assert_equal [], (find_string(["cat", "dog"],"barfoobazbitbyte"))
  end
end


def find_string(array, string)
    one = array[0]
    two = array[1]
    vone = one + two
    vtwo = two + one
    final = []

    if string.include? vtwo
      final << string.index(vtwo)
    end
    if string.include? vone
      final << string.index(vone)
    end
    p final
  end
  
  find_string(["cat", "dog"], "dogcatcatcodecatdog")