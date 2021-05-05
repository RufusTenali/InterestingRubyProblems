require "minitest/autorun"
describe "test" do 
  it "test" do
    assert_equal "25%", (percent_filled([
        "####",
        "#  #",
        "#o #",
        "####"
      ]))
      assert_equal "31%", (percent_filled([
        "######",
        "#ooo #",
        "#oo  #",
        "#    #",
        "#    #",
        "######"
      ]))
      assert_equal "60%", (percent_filled([
        "#######",
        "#o oo #",
        "#######"
      ]))
  end
end

def percent_filled(array)
    empty = 0
    filled = 0
    spaces = 0
    ans = 0
    arr = array.join(',')
    #p arr
    arr.split("").each do |i|
      if i == (" ")
        empty += 1
      elsif i == ("o")
        filled += 1
      end
    end
    # p empty
    # p filled
    spaces = empty + filled
    ans = (filled.to_f / spaces.to_f ) * 100
    p "#{ans.round.to_s}%"
  end
  
#   percent_filled([
#    "######",
#     "#ooo #",
#     "#oo  #",
#     "#    #",
#     "#    #",
#     "######"
#   ])