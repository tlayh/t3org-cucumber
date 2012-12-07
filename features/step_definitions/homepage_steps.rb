When /^I (open|close) the social area$/ do |state|
	notState = state == 'open' ? 'close' : 'open'
	unless page.should have_xpath("//*[@class='b-social b-social-#{state}']")
		page.should have_xpath("//*[@class='b-social b-social-#{notState}']")
		find(:xpath, "//*[@class='b-social-toggle']]").click
	end
	page.should have_xpath("//*[@class='b-social b-social-#{state}']")
end

When /^I click on the fourth stage item$/ do
	find(:xpath, "//*[@id='top-slider']//ul[@class='slider-nav']/li[4]/div").click
	page.should have_xpath("//*[@id='top-slider']//ul[@class='slider-nav']/li[4][@class='active']")
end

Then /^I should see user profiles$/ do
	assert page.all(:xpath, "//*[@id='randomUserProfiles']/*/li/img").length >= 15
end

Then /^forge activity messages$/ do
	wait_until(20) do
		assert page.all(:xpath, "//*[@id='forge-ticker']/*//li[@class='slide']").length >= 10
	end
end

Then /^I should see the first item going active$/ do
	wait_until(20) do
		page.should have_xpath("//*[@id='top-slider']//ul[@class='slider-nav']/li[1][@class='active']")
	end
end

Then /^I should see (\d+) active sponsor banners$/ do |amount|
	@banners = page.all(:xpath, "//*[@id='randombanners']/div/div[not(contains(@style, 'display: none;'))]/a")
	assert @banners.length == amount.to_i
	@path = "//*[@id='randombanners']/div[1]/div[not(contains(@style, 'display: none;'))]/a[@href != 'OLDVALUE']"
	@oldvalue = @banners.first[:href]
end

When /^the sponsor banners should be different$/ do
	banner_urls = []
	@banners.each do |banner|
		assert !banner_urls.include?(banner[:href])
		banner_urls.push(banner[:href])
	end
end