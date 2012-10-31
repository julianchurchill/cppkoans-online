Given /^a koan is set up like this$/ do |values|
  #@koan = Koan.new values
  @koan = Koan.new
  values.raw.each do |row|
    field_name = row[0]
    field_value = row[1]
    @koan.question = field_value if field_name == "question"
    @koan.code = field_value if field_name == "code"
    @koan.actual_answer = field_value if field_name == "actual_answer"
  end
end

When /^I enter "(.*?)" in the "(.*?)" field$/ do |text,element_id|
  fill_in element_id, with: text
end

When /^I press the button "(.*?)"$/ do |element_id|
  click_on element_id
end

Then /^the page contains "(.*?)" followed by a text box with id "(.*?)" followed by "(.*?)"$/ do |pre_text, text_box_id, post_text|
  #page.should have_content pre_text+"<input id=\"answer\"/>"+post_text
  pending
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
  find_button( element_id ).value.should eq text
end

