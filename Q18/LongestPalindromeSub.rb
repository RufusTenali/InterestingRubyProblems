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