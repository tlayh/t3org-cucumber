Then /^I add a new comment$/ do
	@x = 'Nebelscheinwerfer fuer Tolleiv, oder waren es Nachtlichter?' + Time.now.to_i.to_s
	fill_in('tx_comments_pi1_content', :with => @x)
	click_button('Submit')
end

Then /^I can see my comment$/ do
	page.should have_xpath("//*/text()[contains(., '#{@x}')]")
end