Then /^I add a new comment$/ do
	@test_string = 'Nebelscheinwerfer fuer Tolleiv, oder waren es Nachtlichter?' + Time.now.to_i.to_s
	fill_in('tx_comments_pi1_content', :with => @test_string)
	click_button('Submit')
end

Then /^I can see my comment$/ do
	page.should have_xpath("//*/text()[contains(., '#{@test_string}')]")
end