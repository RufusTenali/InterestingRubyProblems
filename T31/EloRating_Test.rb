require "minitest/autorun"
describe "test" do 
  it "test" do
    assert_equal "Ra = 1230 Rb = 2001", (eloRating(1200, 2000, 30, 1))
	assert_equal "Ra = 3020 Rb = 3020", (eloRating(3000, 3000, 40, 1))
	assert_equal "Ra = 2019 Rb = 2402", (eloRating(2000, 2400, 20, 1))
	assert_equal "Ra = 2251 Rb = 1601", (eloRating(2300, 1600, 50, 0))
  end
end


def eloRating(ra, rb, k, d)
	pa = 1/(1+10**((rb - ra)/400.0))
	pb = 1/(1+10**((ra - rb)/400.0))

	if d == 1
		ra = ra + k * (1 - pa)
		rb = rb + k * (1 - pb)
	else
		ra = ra + k * (0 - pa)
		rb = rb + k * (1 - pa)
	end
	p "Ra = #{ra.ceil} Rb = #{rb.ceil}"
end

eloRating(1200, 2000, 30, 1)