require_relative '../helpers/create_space'

feature 'individual space page' do
  scenario 'displays details for the space' do

    create_space

    visit('/space/1')
    expect(page).to have_content("Room")
    expect(page).to have_content("Beautiful room")
    expect(page).to have_content(100)
    expect(page).to have_content("2019-09-02")
    expect(page).to have_content("2019-09-10")
  end
end
