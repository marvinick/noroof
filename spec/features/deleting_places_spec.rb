require "rails_helper"

RSpec.feature "Users can delete place" do 
	scenario "successfully" do 
		FactoryGirl.create(:place, name: "Powell")

		visit "/"
		click_link "Powell"
		click_link "Delete Place"

		expect(page).to have_content "Place has been deleted."
		expect(page.current_url).to eq places_url
		expect(page).to have_no_content "Powell"
	end
end