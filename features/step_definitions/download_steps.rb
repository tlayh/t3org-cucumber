Then /^I want to see (\d+) tabs$/ do |tabNum|
	page.should have_xpath("//ul[@class='tabs lite-tabs']/li", :count => tabNum)
end
