describe 'battle web app', type: :feature do
  it 'infrastructure working' do
    visit '/'
    expect(page).to have_content 'Testing infrastructure working!'
  end
end