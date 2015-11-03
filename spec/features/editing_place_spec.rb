require "rails_helper"

RSpec.feature "Users can edit places" do 
	before do 
		FactoryGirl.create(:place, name: "Powell")

		visit "/"
		click_link "Powell"
		click_link "Edit Place"
	end

	scenario "with valid attributes" do 
		
		fill_in "Name", with: "Barness"
		click_button "Update Place"
		expect(page).to have_content "Place has been updated."
		expect(page).to have_content "Barness"
	end

	scenario "with invalid attributes" do 
		fill_in "Name", with: ""
		click_button "Update Place"
		expect(page).to have_content "Place has not been updated."
	end
end