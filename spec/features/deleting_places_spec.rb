require "rails_helper"

RSpec.feature "Users can delete place" do 
	let(:creator) { FactoryGirl.create(:user)}
	let(:place) do 
		FactoryGirl.create(:place, name: "Powell", creator: creator)
	end

	before do 
		login_as(creator)
		visit "/"
		visit place_path(place)
	end

	scenario "successfully" do 
		click_link "Delete Place"

		expect(page).to have_content "Place has been deleted."
		expect(page.current_url).to eq places_url
		expect(page).to have_no_content "Powell"
	end
end
