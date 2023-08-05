require_relative '../page_object/login_page'

# Common steps
Given('the user is on the login page') do
  visit('login')
  @login_page = LoginPage.new
end

When('the user clicks the login button') do
  @login_page.login_button.click
end

# Valid credentials
When('the user inputs {string} and {string}') do |email,password|
  fill_in('email', with: email)
  fill_in('password', with: password)
end

Then('the page redirects to the Getting Started page') do
  sleep 7
  expect(page.current_path).to eq('/home/getting-started')
end

# Empty fields
When('the user leaves {string} empty') do |field|
  fill_in('email', with: 'qa.rakamin.jubelio@gmail.com')
  fill_in('password', with: 'Jubelio123!')
  fill_in(field, with: '')
  sleep 1
end

Then('error message {string} is displayed') do |message|
  expect(@login_page.error_message).to have_text(message)
end

#Incorrect credentials
Then('error alert {string} is displayed') do |message|
  sleep 2
  expect(@login_page.error_alert).to have_text(message)
end

#Invalid inputs
When('the user inputs {string} with {string}') do |field,invalidInput|
  fill_in('email', with: 'qa.rakamin.jubelio@gmail.com')
  fill_in('password', with: 'Jubelio123!')
  fill_in(field, with: invalidInput)
  sleep 1
end