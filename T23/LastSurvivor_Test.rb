require "minitest/autorun"
describe "test" do 
  it "test" do
    assert_equal 5, (best_postion(6, 2))
	assert_equal 3, (best_postion(9, 2))
	assert_equal 111, (best_postion(119, 2))
	assert_equal 3033, (best_postion(5612, 2))
	assert_equal 10, (best_postion(12, 3))
  end
end

def best_postion(n, k)
	num = n.to_s(k)
	arr = num.split("")
	first = arr.shift()
	arr << first
	final = arr.join("").to_i(k)
	p final
end

best_postion(12, 3)

# best_postion(6, 2) => 5
# best_postion(9, 2) => 3
# best_postion(119, 2) => 111
# best_postion(5612, 2) => 3033
# best_postion(12, 3) => 10