feature 'Attacking' do  
  # As Player 1,
  # So I can start to win a game of Battle,
  # I want my attack to reduce Player 2's HP by 10
  scenario "When Player1 attacks Player 2 their hp is reduced by 10" do
    sign_in_and_play
    click_button 'Attack'
    click_link 'OK'
    expect(page).not_to have_content 'Squirtle: 60HP'
    expect(page).to have_content 'Squirtle: 50HP'
  end
end
