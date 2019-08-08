feature 'View hit points' do
  # As Player 1,
  # So I can see how close I am to winning
  # I want to see Player 2's Hit Points

  scenario "See Player 2's Hit Points" do
    sign_in_and_play
    expect(page).to have_content 'Squirtle: 60HP'
  end

  # As Player 1,
  # So I can win a game of Battle,
  # I want to attack Player 2, and I want to get a confirmation
  scenario "Player 1 can attack Player 2" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Charmander attacked Squirtle'
  end
end
