require "minitest/autorun"
describe "test" do 
  it "test" do
    assert_equal 2, (minFlips("xyxxxyxyy"))
	assert_equal 3, (minFlips("xxxxyxyxyyyy"))
  end
  
end

def minFlips(word)
	x = 0
	index = 0
	min = 0
	running = 0

	word.each_char do |i|
		if i == 'x'
			x += 1
		end
		min = x

		while index < word.size && word[index] == 'x'
			min -= 1
			index += 1
		end

		running = min   
		while index < word.size && word[index] == 'y'
			running += 1
			index += 1
		end
		while index < word.size && word[index] == 'x'
			running -= 1
			index += 1
			if running < min
				min = running 
			end
		end
	return min*-1
end
end
# p minFlips("xyxxxyxyy")