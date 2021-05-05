require "minitest/autorun"
describe "test" do 
  it "test" do
    assert_equal [2,1,0,1,1,0,1], (nearest("shopper"))
	assert_equal [0,0,0,1,1,0,1], (nearest("aaabbuy"))
	assert_equal [1,0,1,1,0,0], (nearest("fergie"))
	assert_equal [0,1,2,1,0,1,2,1,0,1,2,3,2,1,0,1,2,3,2,1,0,1,2,3,4,5,6], (nearest("abcdefghijklmnopqrstuvwcxyz"))
  end
end


def nearest(str)
	a = str.size.times
	# print "["
	print "[#{a.map{|i|a.map{|n|(i-(str[n]=~/[aeiou]/?n:99)).abs}.min}*?,}]"
	# print "]"
end

# nearest("shopper")
