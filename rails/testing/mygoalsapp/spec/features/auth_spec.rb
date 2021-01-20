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
      fill_in 'user[username]', with: "calpalz"
      fill_in 'user[password]', with: "biscuits"
      click_on "Create user!"
      expect(page).to have_content('calpalz')
    end
  end

  feature 'logging in' do
    scenario 'shows username on homepage after log in' do
      login_as('calpalz')
      expect(page).to have_content('calpalz')
    end
  end

  # feature 'logging out' do
  #   scenario 'begings with logged out state'

  #   scenario 'doesn\t show username on homepage after logout'
  # end
end