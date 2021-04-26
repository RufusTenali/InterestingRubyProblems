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
p minFlips("xyxxxyxyy")



# def flip(string)
# 	replace = 0
# 	swap = 0
# 	ind = 0
# 	arr = string.split("")
# 	arr.each do |i|
# 		if arr[ind] == "y"
# 			replace = arr.find_index(arr[ind])
# 		end
# 		if arr[ind] == "y" && replace > 0
# 			swap = arr.find_index(arr[ind])
# 		end
# 		ind += 1
# 	end
# end