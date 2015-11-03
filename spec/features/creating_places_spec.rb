require "rails_helper"

RSpec.feature "Users can create new place" do 
	scenario "with valid attributes" do 
		visit "/"

		click_link "New Place"

		fill_in "Name", with: "Powell"
		fill_in "Description", with: "On Burnside"
		fill_in "Content", with: "Homeless gathering"
		click_button "Create Place"

		expect(page).to have_content "A Place has been created."
	end
end