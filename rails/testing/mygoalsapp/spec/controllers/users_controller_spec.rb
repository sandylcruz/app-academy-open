require 'rails_helper'

RSpec.describe UsersController, :type => :controller do
  describe "GET #new" do
    it "renders the new template" do
      get :new, {}
      expect(response).to render_template("new")
    end
  end

  # describe "POST #create" do
  #   context "with invalid params" do
  #     it "validates the presence of user's email and password" do
  #     end

  #     it "validates that password is at least 6 characters" do
  #     end
  #   end

  #   context "with valid params" do
  #     it "redirects user to index on success" do
  #     end
  #   end
  # end

  # describe "GET #index"
  #   it do
  #   end

  # describe "GET #show" do
  #   it do
  #   end
  # end

  # describe "PATCH #update" do
  #   it do
  #   end
  # end

  # describe "DELETE #destroy" do
  #   it do
  #   end
  # end
end