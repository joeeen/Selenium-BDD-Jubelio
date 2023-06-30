require_relative '../page_object/login_page'

Given('user is on the Login page') do
  visit('login')
  @login_page = LoginPage.new
end

When('user inputs {string} and {string}') do |email,password|
  fill_in('email', with: email)
  fill_in('password', with: password)
end
  
When('user clicks the login button') do
  @login_page.login_button.click
end

Then('page redirects to the Getting Started page') do
  sleep 4
  expect(page.current_path).to eq('/home/getting-started')
end


