# def probability(rating1, rating2)
# 		return 1.0 * 1.0 / (1 + 1.0 ** (10, 1.0 * (rating1 - rating2) / 400))
# 		player1_expectation = 1/(1+10**((player2_rating - player1_rating)/400.0))
# 	   	player2_expectation = 1/(1+10**((player1_rating - player2_rating)/400.0))
# end

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

eloRating(2300, 1600, 50, 0)