require 'rails_helper'

feature "User" do

  before do
  end


  scenario "can create an idea" do
      visit root_path


      fill_in 'Title', with: 'Idea title'
      fill_in 'Body', with: 'Idea body'

      click_on "Create Idea"

      expect(page).to have_content('Idea title')
      expect(page).to have_content('Idea body')
    end
end

