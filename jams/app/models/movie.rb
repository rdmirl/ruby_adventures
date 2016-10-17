class Movie < ApplicationRecord
	
	RATINGS = %w(G PG PG-13 R NC-17)

	validates :title, :released_on, :duration, presence: true
	validates :description, length: { minimum: 25 }
	validates :total_gross, numericality: { greater_than_or_equal_to: 0 }
	validates :image_file_name, allow_blank: true, format: {
  		with:    /\w+\.(gif|jpg|png)\z/i,
  		message: "must reference a GIF, JPG, or PNG image"
	}
	validates :rating, inclusion: { in: RATINGS }

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
