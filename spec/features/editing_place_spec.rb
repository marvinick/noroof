require "rails_helper"

RSpec.feature "Users can edit places" do 
	scenario "with valid attributes" do 
		FactoryGirl.create(:place, name: "Powell")

		visit "/"
		click_link "Powell"
		click_link "Edit Place"
		fill_in "Name", with: "Barness"
		click_button "Update Place"
		expect(page).to have_content "Place has been updated."
		expect(page).to have_content "Barness"
	end
end