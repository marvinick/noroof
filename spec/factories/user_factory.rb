FactoryGirl.define do 
	factory :user do 
		sequence(:email) { |n| "test#{n}@noroof.com"}
		password "password"
	end
end