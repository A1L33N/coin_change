require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe("coin change path", {:type => feature}) do
  it('takes a float user entry and returns the number of dollars and minimum number of coins') do
    visit('/')
    fill_in('change', :with => 8.87)
    click_button('Calculate')
    expect(page).to have_content("8 Dollars, 3 Quarters, 1 Dime, and 2 Pennies")
  end
end
