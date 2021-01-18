require 'rails_helper'

RSpec.describe User, type: :model do
  it "should validate presence of email"
  it "should value presence of password_digest"
  it "should have a password with a length < 6"
  it { should validate_presence_of(:email) }
end
