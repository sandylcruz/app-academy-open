require 'rspec'
require 'rails_helper'

RSpec.describe User, type: :model do

  subject(:user) do
    FactoryBot.build(:user,
      username: "calpal",
      password: "password")
  end

  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_length_of(:password).is_at_least(6) }

  describe '#reset_sesstion_token!' do
    it "sets a new session token when invoked" do
      old_session_token = user.session_token
      user.reset_session_token!
      expect(user.session_token).to_not eq(old_session_token)
    end
  end

  describe '#is_password?' do
    it "will return true if passwords match" do
      user = FactoryBot.build(:user, password: 'password')
      response = user.is_password?('password')
      expect(response).to be(true)
    end

    it "will return false if passwords do not match" do
      expect(user.is_password?("asdfasdf")).to be(false)
    end
  end

  describe '#find_by_credentials' do
    it "returns user given good username and password credentials" do
      user = User.find_by(username: "calpal")
      expect(User.find_by_credentials("calpal", "password")).to eq(user)
    end

    it "does not return user if password is incorrect" do
      user = User.find_by(username: "calpal")
      expect(User.find_by_credentials("calpal", "asdf")).to_not eq(user)
    end

    it "does not return user if username is incorrect" do
      user = User.find_by(username: "calpal")
      expect(User.find_by_credentials("catpals", "password")).to_not eq(user)
    end
  end

  describe '#password=' do
    it "changes user's password to passed in password" do
      user = User.find_by(username: "calpal")
      user.password = "new_password"
      expect(user.password).to eq("new_password")
    end

    it "changes user's password digest when password is updated" do
      user = User.find_by(username: "calpal")
      old_password_digest = user.password_digest
      user.password = "new_password"
      expect(user.password_digest).to_not eq(old_password_digest)
    end
  end
end
