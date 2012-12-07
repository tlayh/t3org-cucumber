require 'headless'

# http://iafonov.github.com/blog/setup-jenkins-to-run-headless-selenium.html

headless = Headless.new
headless.start

at_exit do
	headless.destroy
end

=begin
Before do
  headless.video.start_capture
end

After do |scenario|
	headless.video.stop_and_save(video_path(scenario))
end

def video_path(scenario)
	"#{scenario.name.split.join("_")}.mov"
end
=end
