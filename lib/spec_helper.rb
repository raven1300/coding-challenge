require 'capybara/rspec'
include RSpec::Matchers

# Select browser to use with selenium
browser = :chrome # :firefox, :ie

# Configure Capybara
Capybara.default_max_wait_time = 5
Capybara.default_driver = :selenium
Capybara.register_driver(:selenium) do |app|
  Capybara::Selenium::Driver.new(app, browser: browser)
end
Capybara.page.driver.browser.manage.window.maximize


require_relative '../page/home'
require_relative '../page/todos'