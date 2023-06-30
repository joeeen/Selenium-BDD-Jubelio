require_relative '../page_object/inventory_page'
require_relative '../page_object/login_page'

Given 'user is logged in' do
  @login_page = LoginPage.new
  visit('login')
  fill_in('email', with: "qa.rakamin.jubelio@gmail.com")
  fill_in('password', with: "Jubelio123!")
  @login_page.login_button.click
  sleep 2
end

Given('user is on the Inventory page') do
  visit('home/inventory')
  @inventory_page = InventoryPage.new
end

When('user updates the quantity of product {string} by {string}') do |product, quantity|
  @inventory_page.update_button.click
  @inventory_page.item_dropdown.double_click
  @inventory_page.item_select(product).click
  @inventory_page.quantity_input.double_click
  @inventory_page.quantity_active.set(quantity)
  find_button('Simpan').click
end

Then('alert success message {string} is displayed') do |success_message|
  expect(@inventory_page.alert_message).to eq(success_message)
end