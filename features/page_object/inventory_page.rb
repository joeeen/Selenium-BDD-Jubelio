require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'

class InventoryPage
  include Capybara::DSL
  include Capybara::RSpecMatchers

  def initialize
    @update_button_xpath = '//*[@id="page-wrapper"]/div[3]/div/div/div/div[2]/div/div/div/div/div/div[1]/div[2]/div/button[2]'
    @item_dropdown_xpath = '//*[@id="page-wrapper"]/div[3]/div/div/div/div[2]/div/div/div/div/div[1]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div/div[2]/div/div/div[1]'
    @quantity_input_xpath = '//*[@id="page-wrapper"]/div[3]/div/div/div/div[2]/div/div/div/div/div[1]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div/div[2]/div[1]/div/div[2]/div'
    @quantity_active_xpath = './/div[contains(@class, "rdg-editor-container")]//input[contains(@class, "editor-main")]'
  end

  def update_button
    find(:xpath, @update_button_xpath)
  end

  def item_dropdown
    find(:xpath, @item_dropdown_xpath)
  end

  def item_select(product)
    find('div.selectivity-result-item', text: product)
  end

  def quantity_input
    find(:xpath, @quantity_input_xpath)
  end

  def quantity_active
    find(:xpath, @quantity_active_xpath)
  end

  def alert_message
    find('div.alert-success li').text
  end
end
