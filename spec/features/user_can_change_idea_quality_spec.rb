require 'rails_helper'

feature "User" do

  scenario "can increase the quality of an idea", js: true do
    visit root_path

    expect(page).to have_content('swill')

    find('.thumbs-up').click

    expect(page).to_not have_content('swill')
    expect(page).to have_content('plausible')

    find('.thumbs-up').click

    expect(page).to_not have_content('plausible')
    expect(page).to have_content('genius')

    find('.thumbs-up').click

    expect(page).to_not have_content('swill')
    expect(page).to_not have_content('plausible')
    expect(page).to have_content('genius')
  end
end

