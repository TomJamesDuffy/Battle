
feature 'Hitpoints' do
  scenario 'user can see player 2s hitpoints' do
  visit ('/')
  fill_in :Player_1_name, with: 'Tom'
  fill_in :Player_2_name, with: 'George'
  click_button 'Submit'
  expect(page).to have_content 'George 60/60hp'
  end
end
