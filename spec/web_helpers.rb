def sign_in_and_play
  visit('/')
  fill_in 'Player_1_name', with: 'Harry'
  fill_in 'Player_2_name', with: 'Ron'
  click_button 'Submit'
end
