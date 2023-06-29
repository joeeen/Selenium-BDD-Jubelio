Given 'user is logged in' do
  visit('/login')
  fill_in('email', with: "qa.rakamin.jubelio@gmail.com")
  fill_in('password', with: "Jubelio123!")
  find("button[type='Submit']").click
  sleep 2
end

When('user updates the quantity of product {string} by {string}') do |product, quantity|
  find(:xpath, '//*[@id="page-wrapper"]/div[3]/div/div/div/div[2]/div/div/div/div/div/div[1]/div[2]/div/button[2]').click  
  find(:xpath, '//*[@id="page-wrapper"]/div[3]/div/div/div/div[2]/div/div/div/div/div[1]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div/div[2]/div/div/div[1]').double_click
  selectivity_item = find('div.selectivity-result-item', text: product)
  selectivity_item.click
  find(:xpath, '//*[@id="page-wrapper"]/div[3]/div/div/div/div[2]/div/div/div/div/div[1]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div/div[2]/div[1]/div/div[2]/div').double_click
  find(:xpath, './/div[contains(@class, "rdg-editor-container")]//input[contains(@class, "editor-main")]', wait: 10).set(quantity)
  find_button('Simpan').click
end

Then('alert success message {string} is displayed') do |success_message|
  alert_message = find('div.alert-success li').text
  expect(alert_message).to eq(success_message)
end