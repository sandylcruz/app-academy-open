require 'rails_helper'

RSpec.describe UsersController, :type => :controller do
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
      # it "redirects user to index on success" do
      #   post :create, params: { user: { email: "jack_bruce@place.com", password: "asdfgg" } }
      #   expect(response).to redirect_to(new_session_url)
      # end
    end
  end

  describe "GET #index" do
    it "returns successful response" do
      get :index
      expect(response).to be_successful
    end

    it "renders index template" do
      get :index
      expect(response).to render_template("index")
    end

    # it "assigns @users" do
    #   user = User.create(username: "test", password: "password")
    #   get :index
    #   expect(assigns(:users)).to eq([user])
    # end
  end

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