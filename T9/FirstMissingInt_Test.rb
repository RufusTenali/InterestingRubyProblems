require "minitest/autorun"
describe "test" do 
  it "test" do
    assert_equal 2, (missingint([3, 4, -1, 1]))
    assert_equal 3, (missingint([1, 2, 0]))
  end
end

def missingint(array)
    array = []
    index = 0
    array.each do |x|
     binary_search(array, array[index])
     index += 1
    end
    array 
   end
   
   def binary_search(array, key)
       low, high = 0, array.length - 1
       while low <= high
         mid = (low + high) >> 1
         case key <=> array[mid]
           when 1
             low = mid + 1
           when -1
             high = mid - 1
           else
             return mid
         end
       end
   end
   
  #  p missingint([3, 4, -1, 1])