feature 'Sign up' do
  scenario 'user signs up to MakersBnb' do
    visit('/')
    click_button 'sign up'
    expect(page).to have_content('Sign Up to MakersBnB')
    expect(page).to have_content('Name:')
    expect(page).to have_content('Email:')
    expect(page).to have_content('Password:')
    fill_in 'name', with: 'Joe Bloggs'
    fill_in 'emailaddress', with: 'example@hotmail.com'
    fill_in 'password', with: 'password'
    click_button 'sign up'
    expect(page).to have_content('Log in to MakersBnB')
  end
end
