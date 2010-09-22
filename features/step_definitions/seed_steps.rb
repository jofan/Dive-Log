Given /^there is a log numbered "([^"]*)"$/ do |nr|
  Log.create!(:nr => nr)
end
