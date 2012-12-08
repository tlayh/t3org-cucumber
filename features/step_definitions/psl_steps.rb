Then /^I should see the listing$/ do
	wait_until { page.should have_xpath("//*[@class='s-membership']") }
end