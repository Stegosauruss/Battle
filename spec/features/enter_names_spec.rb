feature 'Enter names' do
  # As two Players,
  # So we can play a personalised game of Battle,
  # We want to Start a fight by entering our Names and seeing them

  scenario 'players can enter names and they are displayed' do
    sign_in_and_play
    expect(page).to (have_content('Squirtle') && have_content('Charmander'))
  end

end