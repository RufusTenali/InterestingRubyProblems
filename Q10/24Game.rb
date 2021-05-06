def game(numbers)
    if numbers.empty?
        return false
    end
    
    if numbers.length == 1
        return (numbers[0]-24).abs < 10**-6
    end
    (0...numbers.length).each do |i|
        (0...numbers.length).each do |j|
            if i != j
                (0...numbers.length).each do |k|
                    next_nums = numbers.select.with_index{|num,k| ![i,j].include?(k)}
                    ['+', '-', '/', '*'].each do |op|
                        if ['+','*'].include?(op) && j > i
                            next
                        end
                        if op != '/' || numbers[j] != 0
                            next_nums << numbers[i].send(op, numbers[j].to_f)
                            if game(next_nums)
                                return true
                            end
                            next_nums.pop
                        end
                    end
                end
            end
        end
    end
    return false
end

p game([5, 2, 7, 8])