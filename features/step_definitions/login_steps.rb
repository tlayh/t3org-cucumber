When /^(?:|I )open the login popup/ do
	tag = page.find(:css, '#login-status a')
	tag.trigger(:mouseover)
end

When /^I fill in new user data$/ do
	@username = "t3ts" + Time.now.to_i.to_s
	print @username
	fill_in("Name", :with => "Test user")
	fill_in("E-mail", :with => mail_address_for(@username))
	fill_in("Username", :with => @username)
	fill_in("Password", :with => @username + "!#")
	fill_in("Repeat", :with => @username + "!#")
end

Then /^I should see the confirmation$/ do
	wait_until(20) do
		page.should have_xpath("//*[contains(@class,'tx-ajaxlogin-widget')]//div[contains(@class,'message-ok')]")
	end
end

Then /^I should get an confirmation mail$/ do
	wait_until(20) do
		mails = mails_for(@username)
		mails.count { |d| d[:title] == 'Registration at ' + current_domain } == 1
	end
end

When /^I fill in a "(.*?)" username$/ do |arg1|
	pending # express the regexp above with the code you wish you had
end

Then /^I should see "(.*?)"$/ do |arg1|
	pending # express the regexp above with the code you wish you had
end