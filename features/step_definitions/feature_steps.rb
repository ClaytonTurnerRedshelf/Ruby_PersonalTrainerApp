Given(/^the following exercies exist:$/) do |exercies_table|
  exercies_table.hashes.each do |e|
		Exercise.create!(e)
	end
end

Given /^the following workouts exist/ do |workouts_table|
	workouts_table.hashes.each do |w|
		Workout.create!(w)
	end
end

Given /the following profiles exist/ do |profiles_table|
  profiles_table.hashes.each do |p|
		Profile.create!(p)
	end
end

Given /^I am logged in as "(.*)"/ do |email|
	user = Profile.find_by_email(email)
	assert(user)
end

Given /^I am on the "(.*)"$/ do |pagename|
  visit path_to(pagename)
end

When /^I press the "(.*)" button/ do |button|
	  click_button(button)
end

Then /^I should be on the "(.*)" page$/ do |pagename|
  visit path_to(pagename)
end

Then /^I should see all the workouts/ do
  flunk "Unimplemented"
end

Then /^I should be redirected to the "(.*)" page$/ do |pagename|
  response.should redirect_to(path_to(pagename))
end

Then /^The workout "(.*)" should be added to the workouts table$/ do |workout_name|
  w = Workout.find_by_name(workout_name)
	assert(w)
end

Then /^The profile "(.*)" should exist$/ do |email|
	p = Profile.find_by_email(email)
	assert(p)
end

Then /^The profile "(.*)" should not exist$/ do |email|
	p = Profile.find_by_email(email)
	assert(p.nil?)
end

When /I (un)?check the following exercies: "(.*)"/ do |uncheck, exercise_list|

	exercise_list.split(", ").each do |ex|
		if uncheck.nil?
			step %Q{I check "#{ex}"}
		else
			step %Q{I uncheck "#{ex}"}
		end
	end
end





