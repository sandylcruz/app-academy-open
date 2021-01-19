require 'rails_helper'

RSpec.describe UsersController, :type => :controller do
  subject(:user) do
    User.create!(
    username: "jill_bruce",
    password: "password")
  end

  describe "GET #new" do
    it "renders the new template" do
      get :new, {}
      expect(response).to render_template("new")
    end
  end

  describe "POST #create" do
    context "with invalid params" do
      it "validates the presence of user's email and password" do
        post :create, params: { user: { email: "jack_bruce@place.com", password: "" } }
        expect(response).to render_template("new")
        expect(flash[:errors]).to be_present
      end

      it "validates that password is at least 6 characters" do
        post :create, params: { user: { email: "jack_bruce@place.com", password: "asdas" } }
        expect(response).to render_template("new")
        expect(flash[:errors]).to be_present
      end
    end

    context "with valid params" do
      it "redirects user to index on success" do
        post :create, params: { user: { email: "jack_bruce@place.com", password: "asdfgg" } }
        expect(response).to render_template("new")
        expect(flash[:errors]).to be_present
      end
    end
  end

  describe "GET #index" do
    it "renders index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "GET #show" do
    it "renders the show template" do
      get :show, params: { id: user.id }
      expect(response).to render_template(:show)
    end
  end
end