def largest_rectangle_area(array)
    biggest = 0
    array.each_index do |i|
			rb = array[(i + 1)...array.count] # rb = right blocks
      rp = (rb.index{|height| height < array[i]} || rb.count) + i # rp = right positon
      lb = array[0...i] # left block
      if lp = lb.rindex{|height| height < array[i]} # lp = left positon
        lp += 1
      else
        lp = 0
      end
      width = rp - lp + 1 
      area = width * array[i]
      biggest = area if area > biggest
    end
    p biggest
	end

largest_rectangle_area([1, 3, 2, 5])








# def barchart(array)
# 	index = 0
# 	counter = array.size
# 	until counter == 0
# 		num = array[index]
# 		if num > 0
# 			print "x"
# 			array[index] -= 1
# 		else
# 			index += 1
# 			p "next"
# 			counter -= 1
# 		end
# 	end
# end

# barchart([1, 3, 2, 5])