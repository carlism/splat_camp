Given /^I am logged out$/ do
  visit logout_url
  # pending # express the regexp above with the code you wish you had
end

Given /^I am logged in as "([^\"]*)" with password "([^\"]*)"$/ do |user, password|
  visit login_url
  fill_in "login", :with => user
  fill_in "password", :with => password
  click_button "Log in"
end

Then /^I am the (.+) of (\d+) events?$/ do |role, count|
  current_user.events.count.should == count
end
