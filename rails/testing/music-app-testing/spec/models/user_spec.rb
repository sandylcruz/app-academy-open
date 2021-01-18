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

  describe '#is_password' do
    it "should return false if incorrect password is given"

    it "should return true if correct password is given "
  end

  describe '#reset_session_token' do
    it "should return true if session token is reset when invoked"

    it "should return false if session token is not reset"
  end

  describe 'User::find_by_credentials' do
    it "should return false if user not located by credential"
  end

end
