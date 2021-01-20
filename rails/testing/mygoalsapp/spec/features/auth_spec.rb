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

  feature 'logging in' do
    scenario "signs user in with correct credentials" do
      visit new_session_url
      fill_in 'Username', with: 'calpal'
      fill_in 'Password', with: 'password'
      click_on 'Submit'
      expect(page).to have_content('calpal')
    end
  end


  # feature 'logging out' do
  #   scenario 'begins with logged out state'

  #   scenario 'doesn\t show username on homepage after logout'
  # end
end