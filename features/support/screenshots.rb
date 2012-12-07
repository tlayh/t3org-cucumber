#---
# Excerpted from "The Cucumber Book",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/hwcuc for more book information.
#---

#After('@javascript') do |scenario|
#  if(scenario.failed?)
#    page.driver.browser.screen_shot_and_save_page("html-report/#{scenario.__id__}.png")
#    embed("#{scenario.__id__}.png", "image/png", "SCREENSHOT")
#end
#end

def screen_shot_and_save_page(title)
	require 'capybara/util/save_and_open_page'
	path = "/#{title}-#{Time.now.strftime('%Y-%m-%d-%H-%M-%S')}"
	Capybara.save_page body, "#{path}.html"
	page.driver.render "#{Capybara.save_and_open_page_path}" "#{path}.png"
	embed("#{path}.png", "image/png", "SCREENSHOT")
end

begin
	After do |scenario|
		screen_shot_and_save_page scenario.title if scenario.failed?
	end
rescue Exception => e
	puts "Snapshots not available for this environment.\n
    Have you got gem 'capybara-webkit' in your Gemfile and have you enabled the javascript driver?"
end