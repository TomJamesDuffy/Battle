require 'spec_helper'
require 'capybara'
require 'capybara/rspec'

feature 'User input' do
  scenario 'User can see input after submitting' do
    visit('/')
      fill_in 'Player_1_name', with: 'Raefe'
      fill_in 'Player_2_name', with: 'Tom'
      click_button 'Submit'
    expect(page).to have_content 'Raefe vs Tom'
  end
end
