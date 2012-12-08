# RSpec
require 'rspec/expectations'
require 'test/unit/assertions'

World(Test::Unit::Assertions)

at_exit do
#system "open ./reports/report.html"
end

Before ('@long') do
	Capybara.default_wait_time = 30
end

After('@long') do
	Capybara.default_wait_time = 2
end

Before('@skipped') do |scenario|
	scenario.skip_invoke!
end