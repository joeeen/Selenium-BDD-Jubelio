require_relative '../page_object/login_page'

# Common steps
Given('the user is on the login page') do
  visit('login')
  @login_page = LoginPage.new
end

Then('an error {string} {string} is displayed') do |type, message|
  expect(@login_page.send("error_#{type}")).to have_text(message)
end

# Valid credentials
When('the user logs in with valid email and password') do
  fill_in('email', with: "qa.rakamin.jubelio@gmail.com")
  fill_in('password', with: "Jubelio123!")
  @login_page.login_button.click
end

Then('the page redirects to the Getting Started page') do
  sleep 7
  expect(page.current_path).to eq('/home/getting-started')
end

# Empty fields
When('the user logs in without {string}') do |field|
  fill_in('email', with: 'qa.rakamin.jubelio@gmail.com')
  fill_in('password', with: 'Jubelio123!')
  fill_in(field, with: '')
  sleep 1
  @login_page.login_button.click
end

#Incorrect credentials and invalid inputs
When('the user logs in with the {string} {string}') do |field,input|
  fill_in('email', with: 'qa.rakamin.jubelio@gmail.com')
  fill_in('password', with: 'Jubelio123!')
  fill_in(field, with: input)
  sleep 1
  @login_page.login_button.click
end
