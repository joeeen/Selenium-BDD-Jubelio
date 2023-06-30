require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'

class LoginPage
  include Capybara::DSL
  include Capybara::RSpecMatchers

  def login_button
    find("button[type='Submit']")
  end

end
