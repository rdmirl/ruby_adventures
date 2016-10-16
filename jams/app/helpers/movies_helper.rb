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

	def image_for(movie)
  		if movie.image_file_name.blank?
    		image_tag('placeholder.jpg', :class => "movie_poster")
  		else
    		image_tag(movie.image_file_name, :class => "movie_poster")
  		end
	end
end