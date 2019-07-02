feature 'Sign up' do
  scenario 'user signs up to MakersBnb' do
    visit('/')
    click_button 'sign up'
    expect(page).to have_content('Sign Up to MakersBnB')
    fill_in 'name', with: 'Joe Bloggs'
    fill_in 'email address', with: 'example@hotmail.com'
    fill_in 'password', with: 'password'
    click_button 'sign up'
    expect(page).to have_content('Sign up successful.')
  end
end
