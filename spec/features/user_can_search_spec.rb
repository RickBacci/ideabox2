require 'rails_helper'

feature "User" do

  scenario "can search for an idea", js: true do
    Idea.create(title: 'test idea1', body: 'test idea body')
    # Idea.create(title: 'test idea2', body: 'test idea body2')
    # Idea.create(title: 'test idea3', body: 'test idea body3')
    Idea.create(title: '123', body: 'abc')
    Idea.create(title: 'abc', body: '123')

    visit root_path

    expect(page).to have_content('test idea1')
    expect(page).to have_content('123')
    expect(page).to have_content('abc')


    fill_in 'Search', with: '1'

    expect(page).to have_content('test idea1')
    expect(page).to have_content('123')
    expect(page).to have_content('abc')

    fill_in 'Search', with: '123'

    expect(page).to have_content('123')
    expect(page).to have_content('abc')
    expect(page).to_not have_content('test idea1')

    fill_in 'Search', with: '1234'

    expect(page).to_not have_content('123')
    expect(page).to_not have_content('abc')
    expect(page).to_not have_content('test idea1')
  end
end

