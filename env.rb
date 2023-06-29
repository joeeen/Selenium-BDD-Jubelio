require 'webdriver'
require 'rspec'
require 'capybara'
require 'currency'

options = Selenium::WebDriver::Chrome::Options.new
options.add_argument("--start-maximized")
Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app,
    browser: :chrome,
    options: options # Pass the options to the driver
  )
end

Capybara.default_driver = :chrome
Capybara.default_selector = :css
Capybara.current_session.driver.browser.manage.window.maximize
