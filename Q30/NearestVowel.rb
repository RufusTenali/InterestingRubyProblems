def nearest(str)
	a = str.size.times
	print "["
	print a.map{|i|a.map{|n|(i-(str[n]=~/[aeiou]/?n:99)).abs}.min}*?,
	print "]"
end

nearest("shopper")

# def nearest(string)
# 	arr = string.split("")
# 	index = 0
# 	find = 0
# 	counter = 0
# 	final = []
# 	arr.map do |x|
# 		if x == "a"||x == "e"||x == "i"||x == "o"||x =="u"
# 			final[index] = 0
# 			index += 1
# 		else
# 			final[index] = 1
# 			index += 1
# 		end
# 	end

# 	p final
# end

# nearest("babbb")


# def shortest_to_char(s, c)
#     answer = []
	
# 	# Get the C index
#     c_index = s.index(c)
	
# 	# Iterate and add the diff value to answer array
#     for i in 0...s.length
# 		# If the character 'c' found at different place,
# 		# update the c_index value to the new index value 'i'
#         if s[i] == c
#             c_index = i
#         end
#         answer[i] = (c_index-i).abs
#     end
	
# 	# This answer array might not be the best solution because of the possibility of element at end also.
# 	# So iterating from the end again to see if the answer array has minimum distance.
# 	# If not replace it with minimum distance.
#     k = s.length-1
#     while k >= 0
#         if s[k] == c
#             c_index = k
#         end
#         current_minimum = (c_index-k).abs
#         answer[k] = [current_minimum, answer[k]].min
#         k -= 1
#     end
        
#     return answer
# end

# p shortest_to_char("babbb", "a")