def get_ter_extensions
	page.all(:xpath, "//*[@class='tx-solr']/div[contains(@class, 'ter-ext-list-row')]")
end

Given /^I see (\d+) extensions$/ do |amount|
	@extensions = get_ter_extensions
	assert @extensions.length == amount.to_i
end

When /^I open the next page$/ do
	find(:xpath, "//*[@class='tx-pagebrowse-pi1']/ul[contains(@class, 'b-pager')]/li[contains(@class, 'act')]/following::*[1]").click
end

When /^I search (.*)$/ do |term|
	within(:xpath, "//div[contains(@class, 'ter-ext-list-search')]/form") do
		fill_in("q", :with => term)
		find_button('Search').click
	end
end

When /^I switch sorting to Downloads$/ do
	within(:xpath, "//div[contains(@class, 'ter-ext-list-search')]") do
		select('Downloads', :from => 'ter-ext-list-search-sorting')
	end
end

Then /^I should see (\d+) (different )?extensions$/ do |amount, different|
	assert get_ter_extensions.length >= amount.to_i
end

Then /^(.*) appears as first extension$/ do |extension_key|
	element = find(:xpath, "//*[@class='tx-solr']/div[contains(@class, 'ter-ext-list-row')][1]/*//span[contains(@class, 'ter-ext-list-row-key')]")
	assert element.text == extension_key, "Found #{element.text} - expected #{extension_key}"
end