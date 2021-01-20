require 'spec_helper'
require 'rails_helper'

RSpec.describe 'Create User', type: :feature do
  feature 'the signup process' do
    scenario 'has a new user page' do
      visit new_user_url
      expect(page).to have_content "New user"
    end
  end

  feature 'signing up a user' do 
    scenario 'show username after creating new user' do 
      visit new_user_url
      fill_in 'user[username]', with: "calpal1"
      fill_in 'user[password]', with: "password"
      click_on "Create user!"
      expect(page).to have_content('calpal1')
    end
  end

  feature "logging in" do
    subject(:user) do
      FactoryBot.build(:user,
        username: "calpal",
        password: "password")
    end

    # given(:calpal) { FactoryBot.create(:user) }
    
    scenario "shows username on the homepage after login" do
      user = FactoryBot.build(:user, password: "password")
      visit 
      expect(page).to have_content "Welcome user"
    end
  end

  # feature 'logging out' do
  #   scenario 'begins with logged out state'

  #   scenario 'doesn\t show username on homepage after logout'
  # end
end