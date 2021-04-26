def first_game
	check = false
	stack = []
	counter = 0
	roll = 0
	until check == true
	roll = rand(1..6)
		if roll == 5 && stack.empty?
			stack.push(roll)
			# p stack
		elsif roll == 6 && stack.pop == 5
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

def second_game
check = false
	stack = []
	counter = 0
	roll = 0
	until check == true
	roll = rand(1..6)
		if roll == 5 && stack.empty?
			stack.push(roll)
			# p "first #{stack}"
		elsif roll == 5 && stack.pop == 5
			# p "Happened two"
			stack.push(roll)
			check = true
		else
			stack.clear
		end
		counter += 1
	end
	# p "second #{stack}"
	p "Game two executed second game counter: #{(counter)*1/36.to_f}"
end

first_game
second_game