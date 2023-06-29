When('user inputs {string} and {string}') do |email,password|
  fill_in('email', with: email)
  fill_in('password', with: password)
end
  
When('user clicks the login button') do
  find("button[type='Submit']").click
end

Then('page redirects to the Getting Started page') do
  sleep 4
  expect(page.current_path).to eq('/home/getting-started')
end


