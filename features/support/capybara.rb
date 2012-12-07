# See http://www.emmanueloga.com/2011/07/26/taming-a-capybara.html

require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'capybara/session'

require 'capybara-webkit'
#require "selenium-webdriver"

#Capybara.register_driver :chrome do |app|
#	Capybara::Selenium::Driver.new(app, :browser => :chrome)
#end

Capybara.default_selector = :css
Capybara.server_boot_timeout = 50
Capybara.save_and_open_page_path = 'tmp/capybara'
Capybara.run_server = true
Capybara.javascript_driver = :webkit
#Capybara.javascript_driver = :chrome
#Capybara.javascript_driver = :selenium
Capybara.default_driver = :webkit
#Capybara.default_driver = :chrome
#Capybara.default_driver = :selenium
Capybara.default_wait_time = 2