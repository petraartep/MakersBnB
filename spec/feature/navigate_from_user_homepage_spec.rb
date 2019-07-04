feature 'navigate_from_user_homepage' do
  scenario 'allows you to navigate to the make a new space page' do
    visit('/')
    click_button 'sign up'
    fill_in 'name', with: 'Joe Bloggs'
    fill_in 'emailaddress', with: 'example@hotmail.com'
    fill_in 'password', with: 'password'
    click_button 'sign up'
    fill_in 'emailaddress', with: 'example@hotmail.com'
    fill_in 'password', with: 'password'
    click_button 'log in'
    click_button 'Add space'
    expect(current_path).to eq('/user/5/space/new')
  end
  scenario 'allows you to navigate to the spaces page' do
    visit('/')
    click_button 'sign up'
    fill_in 'name', with: 'Joe Bloggs'
    fill_in 'emailaddress', with: 'example@hotmail.com'
    fill_in 'password', with: 'password'
    click_button 'sign up'
    fill_in 'emailaddress', with: 'example@hotmail.com'
    fill_in 'password', with: 'password'
    click_button 'log in'
    click_button 'View your spaces'
    expect(current_path).to eq('/user/6/space')
  end
end
