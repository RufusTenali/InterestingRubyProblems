# def hashtags(str)
# 	str.downcase!
#   array = str.split(" ")
#   sorted = array.sort
#   final = []
# 	index = 0
# 	i = 0
# 	check = 0
# 	ind = 0
# 	c = 0
# 	p sorted
# 	until c == 3
# 	if sorted[index].size == sorted[index+1].size
# 		# array.each do |x|
# 		# if array[ind] == sorted[check]
# 		# 	final[i] = sorted[index]
# 		# elsif 
# 		# 	array[ind+1] == sorted[check]
# 		# 	final[i] = sorted[index+1]
# 		# else
# 		# 	check += 1
# 		# 	ind += 1
# 		# 	index += 1
# 		# end
# 		if 
# 			array.index(sorted[index]) < array.index(sorted[index+1])
# 			final[i] = sorted[index]
# 			p sorted[index]
# 			c += 1
# 		else
# 			final[i] = sorted[index+1]
# 				p sorted[index+1]
# 			c += 1
# 	end
# 	else
# 		final[i] = sorted[index]
# 		index += 1
# 		i += 1
# 		c += 1
# end
# end
#   final.map{|s| s.start_with?("#") ? s : s.prepend("#")}
# 	p final
# end

# hashtags("How the Avocado Became the Fruit of the Global Trade")

def hashtags(str)
	array = str.split.map { |s| s.gsub(/\W/, '') }.sort_by(&:length)[-3..-1]
	array.map{|s| s.start_with?("#") ? s : s.prepend("#")}
	p array.sort!
end

hashtags("How the Avocado Became the Fruit of the Global Trade")