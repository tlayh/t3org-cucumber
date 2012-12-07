Then /^I should see (\d+) platinum members$/ do |numMember|
	wait_until { page.should have_xpath("//td[@class='s-membership']") }
end