
feature 'Log in' do
  scenario 'user can log in to MakersBnB' do
    visit('/')
    click_button 'sign up'

    expect(current_path).to eq('/user/new')
    expect(page).to have_content('Sign Up to MakersBnB')
    fill_in 'name', with: 'Joe Bloggs'
    fill_in 'emailaddress', with: 'example@hotmail.com'
    fill_in 'password', with: 'password'
    click_button 'sign up'

    expect(current_path).to eq('/user/login')
    expect(page).to have_content('Log in to MakersBnB')
    fill_in 'emailaddress', with: 'example@hotmail.com'
    fill_in 'password', with: 'password'
    click_button 'log in'
    expect(page).to have_content('Hello Joe Bloggs')
  end
end
