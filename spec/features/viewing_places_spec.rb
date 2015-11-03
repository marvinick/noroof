require "rails_helper"

RSpec.feature "Users can view places" do 
	scenario "with the place details" do 
		place = FactoryGirl.create(:place, name: "Powell")

		visit "/"
		click_link "Powell"
		# expect(page).to eq place_url(place)
		expect(page).to have_content "Powell"
	end
end