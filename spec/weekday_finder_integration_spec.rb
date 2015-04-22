require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the weekday finder path', {:type => :feature}) do
  it('processes the user entry and returns the weekday') do
    visit('/')
    fill_in('date', :with => '4/22/2015')
    click_button('Send')
    expect(page).to have_content('Wednesday')
  end
end
