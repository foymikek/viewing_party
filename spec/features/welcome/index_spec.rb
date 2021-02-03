require 'rails_helper'

RSpec.describe 'welcome index page' do
  describe 'when I visit the welcome page' do
    it 'has a welcome message' do
      visit root_path

      expect(page).to have_content("Welcome to Viewing Party")
    end

    it 'has a brief description of the application' do
      visit root_path

      expect(page).to have_content("Find info about gnarly movies and create your own viewing parties!")
    end

    it 'has a button to log in' do
      visit root_path

      expect(page).to have_button('Login')
      ###need to add that it allows users to login
    end

    it 'has a link to register' do
      visit root_path

      expect(page).to have_link('Register Here')

      click_link 'Register Here'

      expect(current_path).to eq(register_path)
    end
  end
end