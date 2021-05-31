def first_game(conditonOne, conditonTwo)
	check = false
	stack = []
	counter = 0
	roll = 0
	until check == true
	roll = rand(1..6)
		if roll == conditonOne && stack.empty?
			stack.push(roll)
			# p stack
		elsif roll == conditonTwo && stack.pop == conditonOne
			# p "Happened one"
			stack.push(roll)
			check = true
		else
			stack.clear
		end
		counter += 1
	end
	# 	p "second #{stack}"
	p "first game counter: #{(counter)*1/36.to_f}"
end

def second_game(conditonOne, conditonTwo)
check = false
	stack = []
	counter = 0
	roll = 0
	until check == true
	roll = rand(1..6)
		if roll == conditonOne && stack.empty?
			stack.push(roll)
			# p "first #{stack}"
		elsif roll == conditonTwo && stack.pop == conditonOne
			# p "Happened two"
			stack.push(roll)
			check = true
		else
			stack.clear
		end
		counter += 1
	end
	# p "second #{stack}"
	p "second game counter: #{(counter)*1/36.to_f}"
end

first_game(5, 6)
second_game(5, 5)