def balance_brackets(string)
    #intialize stack
    stack = []
    #do each for every char in the string
    string.each_char do |char|
      #check for bracket start
      case char
      when "("
        stack.push "("
        #check for bracket end
      when ")"
        if stack.empty? || stack.pop != "("
          return false
    end
      when "["
        stack.push "["
      when "]"
        if stack.empty? || stack.pop != "["
          return false
    end
      when "{"
        stack.push "{"
      when "}"
        if stack.empty? || stack.pop != "{"
          return false
    end
    end
    end
    stack.empty?
  end
  
  string = "([{}])"
  
  p balance_brackets(string)
  
  
  
  
  # if string.length % 2 !=0
  #     puts false
  # else
  #   return true
  # array_of_characters = string.chars
  # puts array_of_characters
  # array_of_characters do each |x|
  
  # end
  # end