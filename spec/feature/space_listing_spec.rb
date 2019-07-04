require_relative '../helpers/create_spaces'

feature 'a user can see all spaces' do
  
  before(:all) do
    Capybara.server = :webrick
    Capybara.current_driver = :selenium
  end

  scenario 'no filtering in place' do

    create_spaces
    visit '/space'
    expect(page).to have_content('Jacks place')
    expect(page).to have_content('Jacks second place')
    expect(page).to have_content('Jill cosy place')
    expect(page).to have_content('Jim hunting place')

  end

  after(:all) do
    Capybara.use_default_driver
  end

end