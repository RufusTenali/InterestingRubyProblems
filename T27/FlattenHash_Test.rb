require "minitest/autorun"
describe "test" do 
  it "test" do
    assert_equal {:key=>3, :"foo.a"=>5, :"foo.bar.baz"=>8}, (flatten_hash({
      "key": 3,
      "foo": {
          "a": 5,
          "bar": {
              "baz": 8
          }
      }
  }))
  end
end

def flatten_hash(hash)
    hash.each_with_object({}) do |(k, v), h|
      if v.is_a? Hash
        flatten_hash(v).map do |h_k, h_v|
          h["#{k}.#{h_k}".to_sym] = h_v
        end
      else 
        h[k] = v
      end
     end
  end
  
  print flatten_hash({
      "key": 3,
      "foo": {
          "a": 5,
          "bar": {
              "baz": 8
          }
      }
  })