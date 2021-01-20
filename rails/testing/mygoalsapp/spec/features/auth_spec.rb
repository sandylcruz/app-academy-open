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
    scenario 'valid inputs' do 
      visit new_user_url
      fill_in 'Username', :with => "calpal"
      fill_in 'Password', :with => "biscuits"
      click_on "Create User"
      expect(page).to have_content('calpal')
    end

    # scenario 'shows username on homepage after signup'

    # before(:each) do
    #   scenario 'with an invalid user' do
    #     visit new_user_url
    #     fill_in 'Username', :with => "calpal"
    #     click_on "Create User"
    #     expect(page).to have_content('Password cannot be blank')
    #   end
    # end
  end

  # feature 'logging in' do
  #   scenario 'shows username on homepage after log in'
  # end

  # feature 'logging out' do
  #   scenario 'begings with logged out state'

  #   scenario 'doesn\t show username on homepage after logout'
  # end
end