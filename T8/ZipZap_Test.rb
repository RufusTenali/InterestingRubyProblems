require "minitest/autorun"
describe "test" do 
  it "test" do
    assert_equal "zpXzp", (zipzap("zipXzap"))
    assert_equal "zpzp", (zipzap("zopzop"))
    assert_equal "zzzpzp", (zipzap("zzzopzop"))
  end
end

def zipzap(string)
    index = 0
    array = string.split("")
    # p array
    array.each do |x|
      if array[index] == "z" && array[index+2] == "p"
         array.delete_at(index+1)
         index += 1
    else
      index += 1
    end
  end
    p array.join()
  end
  
  # zipzap("zzzopzop")