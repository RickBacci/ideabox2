require 'rails_helper'

feature "User" do

  scenario "can edit an idea", js: true do
    Idea.create(title: 'test idea', body: 'test idea body')
    visit root_path

    expect(page).to have_content('test idea')
    expect(page).to have_content('test idea body')

    click_on 'Edit'

    fill_in 'Title', with: 'Idea title'
    fill_in 'Body', with: 'Idea body'

    click_on "Update Idea"

    expect(page).to have_content('Idea title')
    expect(page).to have_content('Idea body')
  end
end

