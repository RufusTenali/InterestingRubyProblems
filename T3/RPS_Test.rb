require "minitest/autorun"
describe "test" do 
  it "test" do
    assert_equal "Abigail", (rps_game([["R", "P"], ["R", "S"], ["S", "P"]]))
    assert_equal "Tie", (rps_game([["R", "R"], ["S", "S"]]))
    assert_equal "Tie", (rps_game([["S", "R"], ["R", "S"], ["R", "R"]]))
    assert_equal "Benson", (rps_game([["S", "R"], ["P", "S"], ["R", "R"]]))
  end
end

def rps_game(array)
    abigail = 0
    benson = 0
      array.each do |throws|
       if throws[0] == "R" && throws[1] == "P"
        benson += 1
      elsif throws[0] == "R" && throws[1] == "S"
        abigail += 1
      elsif throws[0] == "P" && throws[1] == "R"
        abigail += 1
      elsif throws[0] == "P" && throws[1] == "S"
        benson += 1
      elsif throws[0] == "S" && throws[1] == "R"
        benson += 1
      elsif throws[0] == "S" && throws[1] == "P"
        abigail += 1
      end
   end
    if abigail > benson
      p "Abigail"
    elsif
      benson > abigail
      p "Benson"
    else
      p "Tie"
    end
   end
  
  rps_game([["R", "P"], ["R", "S"], ["S", "P"]])