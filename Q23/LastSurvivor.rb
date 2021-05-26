def best_postion(n, k)
	num = n.to_s(k)
	arr = num.split("")
	first = arr.shift()
	arr << first
	final = arr.join("").to_i(k)
	p final
end

best_postion(6, 3)