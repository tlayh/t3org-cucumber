Given(/^(?:|I )am on (.+)$/) do |page_name|
	visit path_to(page_name)
end

When /^(?:|I )go to (.+)$/ do |page_name|
	visit path_to(page_name)
end

When /^(?:|I )press "([^"]*)"$/ do |button|
	click_button(button)
end

When /^(?:|I )follow "([^"]*)"$/ do |link|
	click_link(link)
end

Then /^I should see them changing$/ do
	wait_until(10) do
		page.should have_xpath(@path.gsub!(/OLDVALUE/, @oldvalue))
	end
end