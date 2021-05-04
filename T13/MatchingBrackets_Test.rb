require "minitest/autorun"
describe "test" do 
  it "test" do
    assert_equal true, (balance_brackets("([{}])"))
    assert_equal false, (balance_brackets("([{}]"))
    assert_equal true, (balance_brackets("({})"))
    assert_equal false, (balance_brackets("}])"))
  end
end

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
  
  # string = "([{}])"
  
  # p balance_brackets(string)