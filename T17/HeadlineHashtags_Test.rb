require "minitest/autorun"
describe "test" do 
  it "test" do
    assert_equal ["#avocado", "#became", "#global"], (hashtags("How the Avocado Became the Fruit of the Global Trade"))
	assert_equal  ["#christmas", "#probably", "#will"], (hashtags("Why You Will Probably Pay More for Your Christmas Tree This Year"))
	assert_equal ["#surprise", "#parents", "#fruit"], (hashtags("Hey Parents, Surprise, Fruit Juice Is Not Fruit"))
	assert_equal ["#visualizing", "#science"], (hashtags("Visualizing Science"))
  end
end

def hashtags(str)
	array = str.split.map { |s| s.gsub(/\W/, '') }.sort_by(&:length)[-3..-1]
	array.map{|s| s.start_with?("#") ? s : s.prepend("#")}
	array.sort!
	array.map!(&:downcase)
	p array
end

hashtags("How the Avocado Became the Fruit of the Global Trade")