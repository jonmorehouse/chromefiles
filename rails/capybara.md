require 'capybara'
include Capybara::DSL
Capybara.configure do |config|
	config.current_driver = :selenium
	config.run_server = false
	config.app_host   = 'http://resume.jonmorehouse.me'
end


