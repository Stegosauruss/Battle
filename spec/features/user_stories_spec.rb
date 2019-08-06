describe 'battle web app', type: :feature do
  # it 'infrastructure working' do
  #   visit '/'
  #   expect(page).to have_content 'Testing infrastructure working!'
  # end

  it 'players can enter names and they are displayed' do
    visit '/'
    fill_in 'player_one_name', with: 'Andy'
    fill_in 'player_two_name', with: 'Beatrice'
    click_button 'Submit'
    expect(page).to have_content 'Andy'
  end
end