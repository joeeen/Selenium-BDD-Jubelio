require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'

class LoginPage
  include Capybara::DSL
  include Capybara::RSpecMatchers

  def initialize
    @error_alert_xpath = '//*[@id="root"]/div/div[1]/li'
  end

  def login_button
    find("button[type='Submit']")
  end

  def error_message
    find('span.help-block')
  end

  def error_alert
    find(:xpath, @error_alert_xpath)
  end

end
