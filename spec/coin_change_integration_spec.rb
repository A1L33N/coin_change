require('capybara/rspec')
require('./app')
require('launchy')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

include Capybara::DSL

describe("coin change path", {:type => feature}) do
  it('takes a float user entry and returns the number of dollars and minimum number of coins') do
    visit('/')
    fill_in('change', :with => 8.87)
    click_button('Calculate')
    # save_and_open_page
    expect(page).to have_content("8 Dollars, 3 Quarters, 1 Dime and 2 Pennies")
  end
end
