#require_relative '../spec_helper.rb'
# As a user, letting a property 
# So that I can list a space
# I need to be able create a space

feature 'create a space' do
  scenario 'I can create a space so that it can be rented' do

    visit '/user/1/space/new'
    fill_in('name', with: "Alexis' house")
    fill_in('description', with: "Lovely house with good shower")
    fill_in('price', with: "100")
    fill_in('available_from', with: "02/07/2019")
    fill_in('available_to', with: "02/09/2019")
    click_button('Submit')

    expect(page).to have_content("Alexis' house")
    expect(page).to have_content("Lovely house with good shower")
    expect(page).to have_content("100")
    expect(page).to have_content("02/07/2019")
    expect(page).to have_content("02/09/2019")

  end
end
