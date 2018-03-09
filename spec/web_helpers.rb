def sign_in_and_play
  visit('/')
  fill_in 'Player_1_name', with: 'Tom'
  fill_in 'Player_2_name', with: 'Ant'
  click_button 'Submit'
end
