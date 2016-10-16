require "spec_helper"
require "rails_helper"

describe "Viewing list of movies" do
	it "displays the movie" do
		visit movies_url
		expect(page).to have_text("3 movies found")
	end
end