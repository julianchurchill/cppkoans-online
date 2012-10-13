
When /^I enter "(.*?)" in the "(.*?)" field$/ do |text,element_id|
  pending
end

Then /^the page shows "(.*?)"$/ do |text|
  page.should have_content text
end

Then /^the page does not show "(.*?)"$/ do |text|
  pending
end

Then /^the page has a text box with id "(.*?)"$/ do |element_id|
  pending
end

Then /^the text box with id "(.*?)" is empty$/ do |element_id|
  pending
end

Then /^the page has a button with the text "(.*?)"$/ do |text|
  pending
end
