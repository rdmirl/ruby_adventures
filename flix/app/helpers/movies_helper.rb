module MoviesHelper
	def format_price(movie)
		if movie.is_unreleased?
			"TBD"
		elsif movie.is_flop?
			"Doesn't matter; flopped."
		else
			number_to_currency(movie.total_gross)
		end
	end
end