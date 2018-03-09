feature 'switch' do
  scenario 'clicing attack switches the players' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Ok'
    click_button 'Attack'
    expect(page).to have_content 'Ant was attacked'
  end
end
