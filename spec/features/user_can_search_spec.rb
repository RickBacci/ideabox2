require 'rails_helper'

feature "User" do

  scenario "can search for an idea", js: true do
    Idea.create(title: 'test idea1', body: 'test idea body1')
    Idea.create(title: 'test idea2', body: 'test idea body2')
    Idea.create(title: 'test idea3', body: 'test idea body3')

    visit root_path

    expect(page).to have_content('test idea1')
    expect(page).to have_content('test idea2')
    expect(page).to have_content('test idea3')


    fill_in 'Search', with: '1'

    expect(page).to have_content('test idea1')
    expect(page).to_not have_content('test idea2')
    expect(page).to_not have_content('test idea3')
  end
end

