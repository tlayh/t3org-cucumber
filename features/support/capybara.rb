# See http://www.emmanueloga.com/2011/07/26/taming-a-capybara.html

require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'capybara/session'

require 'capybara-webkit'

# Selenium
#require "selenium-webdriver"

Capybara.default_selector = :css
Capybara.server_boot_timeout = 50
Capybara.save_and_open_page_path = 'tmp/capybara'
Capybara.run_server = true
#Capybara.javascript_driver = :webkit_debug
Capybara.javascript_driver = :webkit
#Capybara.default_driver = :webkit_debug
Capybara.default_driver = :webkit
Capybara.default_wait_time = 2