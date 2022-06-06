
require "minitest/autorun"
describe "test" do 
  it "test" do
    assert_equal "anana", (find_palindrome("bananas"))
    assert_equal "bcdcb", (find_palindrome("aabcdcb"))
    assert_equal "madam", (find_palindrome("madam"))
    assert_equal "byyb", (find_palindrome("abyybuh"))
  end
end
def find_palindrome(string)
    size = string.size
    longest_palindrome(string, size)
  end
  
  def longest_palindrome(string, size)
    string.size.times do |start| # loop over the size of string
      break if start + size > string.size # bounds check
  
      reverse = string[start, size].reverse
  
      if string.include? reverse #look for palindrome
        return reverse #return the largest 
      end
    end
    longest_palindrome(string, size - 1) # Palindrome not found, look for the next smallest size 
  end
  
  p find_palindrome("bananas")