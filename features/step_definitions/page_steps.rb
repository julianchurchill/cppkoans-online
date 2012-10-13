
When /^I enter "(.*?)" in the "(.*?)" field$/ do |text,element_id|
  fill_in element_id, with: text
end

When /^I press the button "(.*?)"$/ do |element_id|
  click_on element_id
end

Then /^the page shows "(.*?)"$/ do |text|
  page.should have_content text
end

Then /^the page does not show "(.*?)"$/ do |text|
  page.should_not have_content text
end

Then /^the page has a text box with id "(.*?)"$/ do |element_id|
  page.should have_field element_id
end

Then /^the text box with id "(.*?)" is empty$/ do |element_id|
  find_field( element_id ).value.should eq ""
end

Then /^the page has a button with id "(.*?)"$/ do |element_id|
  page.should have_button element_id
end

Then /^the button with id "(.*?)" has the text "(.*?)"$/ do |element_id,text|
  find_button( element_id ).text.should eq text
end

