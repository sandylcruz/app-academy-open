require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) do
    FactoryBot.build(:user,
      email: "jonathan@fakesite.com",
      password: "good_password")
  end

  describe 'validations' do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password_digest) }
    it { should validate_length_of(:password).is_at_least(6) }
  end

  describe '#is_password?' do
    it "should return false if incorrect password is given" do
      user = FactoryBot.build(:user, password: 'password')
      response = user.is_password?('asdfasdf')
      expect(response).to be(false)
    end
    
    it "should return true if correct password is given" do
      user = FactoryBot.build(:user, password: 'password')
      response = user.is_password?('password')
      expect(response).to be(true)
    end
  end

  describe '#reset_session_token!' do
    it "should return true if session token is reset when invoked" do
      old_session_token = user.session_token
      user.reset_session_token!
      expect(user.session_token).not_to eq(old_session_token)
    end

    it "should return false if session token is not reset" do
      old_session_token = user.session_token
      expect(user.session_token).to eq(old_session_token)
    end

  end

  describe 'User::find_by_credentials' do
    it "should return false if user not located by credential" do
      expect(User.find_by_credentials("jonathan@fakesite.com", "good_passwordasda")).to_not eq(user)
    end

    it "should return true if user is found by credentials" do
      expect(User.find_by_credentials("jonathan@fakesite.com", "good_password")).to eq(user)
    end
  end

end
