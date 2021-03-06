require 'rails_helper'

feature "User" do

  scenario "can increase the quality of an idea", js: true do
    Idea.create(title: 'test idea', body: 'test idea body')
    visit root_path

    expect(page).to have_content('swill')

    page.find("button.glyphicon-thumbs-up").trigger("click")

    visit root_path
    expect(page).to_not have_content('swill')
    expect(page).to have_content('plausible')

    page.find("button.glyphicon-thumbs-up").trigger("click")

    expect(page).to_not have_content('plausible')
    expect(page).to have_content('genius')

    page.find("button.glyphicon-thumbs-up").trigger("click")

    expect(page).to_not have_content('swill')
    expect(page).to_not have_content('plausible')
    expect(page).to have_content('genius')
  end


  scenario "can decrease the quality of an idea", js: true do
    Idea.create(title: 'test idea', body: 'test idea body', quality: 2)
    visit root_path

    expect(page).to have_content('genius')

    page.find("button.glyphicon-thumbs-down").trigger("click")

    expect(page).to_not have_content('genius')
    expect(page).to have_content('plausible')

    page.find("button.glyphicon-thumbs-down").trigger("click")

    expect(page).to_not have_content('plausible')
    expect(page).to have_content('swill')

    page.find("button.glyphicon-thumbs-down").trigger("click")

    expect(page).to have_content('swill')
    expect(page).to_not have_content('plausible')
    expect(page).to_not have_content('genius')
  end
end

