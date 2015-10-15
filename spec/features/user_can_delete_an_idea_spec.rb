require 'rails_helper'

feature "User" do

  scenario "can delete an idea", js: true do
    visit root_path

    fill_in 'title', with: 'Idea title'
    fill_in 'body', with: 'Idea body'

    click_on "Create Idea"

    expect(page).to have_content('Idea title')
    expect(page).to have_content('Idea body')

    page.find("a.delete-idea").trigger("click")

    expect(page).to_not have_content('Idea title')
    expect(page).to_not have_content('Idea body')
  end
end

