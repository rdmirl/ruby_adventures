class Movie < ApplicationRecord
	def is_unreleased?
		total_gross.blank? || total_gross.zero?
	end

	def is_flop?
		total_gross < 10000000
	end

	def self.released
		where("released_on <= ?", Time.now).order("title")
	end
end
