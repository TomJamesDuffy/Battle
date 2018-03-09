require 'spec_helper'
require 'capybara'
require 'capybara/rspec'

feature 'User input' do
  scenario 'User can see input after submitting' do
    sign_in_and_play
    expect(page).to have_content 'Tom vs Ant'
  end
end
