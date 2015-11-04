require "rails_helper"

RSpec.feature "Users can view places" do 
	let(:creator) { FactoryGirl.create(:user)}
	let(:place) do 
		FactoryGirl.create(:place, name: "Powell", creator: creator)
	end

	before do 
		login_as(creator)
		visit "/"
		visit place_path(place)
	end

	scenario "with the place details" do 
		# expect(page).to eq place_path(place)
		expect(page).to have_content "Powell"
	end
end

