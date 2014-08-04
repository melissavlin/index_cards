FactoryGirl.define do

	factory :project do
		user_id 1
		title "It's a Hard-NYCDA Life"
	end

	factory :card do
		project_id 2
		title "Week 8, Day 4"
		body "tests for days..."
		position 1
	end


end