
feature 'Hitpoints' do
  scenario 'user can see player 2s hitpoints' do
  sign_in_and_play
  expect(page).to have_content 'Ant 60/60hp'
  end
end
