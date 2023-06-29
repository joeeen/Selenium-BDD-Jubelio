require 'webdrivers'
require 'rspec'
require 'capybara'
require 'capybara/cucumber'

options = Selenium::WebDriver::Chrome::Options.new
options.add_argument("--start-maximized")

Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

Capybara.app_host = 'https://app.jubelio.com'
Capybara.default_driver = :selenium_chrome
Capybara.default_selector = :css