
When /^I visit the home page$/ do
  visit "/"
end

Then /^the home page shows "(.*?)"$/ do |text|
  page.should have_content text
end

