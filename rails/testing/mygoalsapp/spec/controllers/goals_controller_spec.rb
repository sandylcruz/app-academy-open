require 'rails_helper'

RSpec.describe UsersController, :type => :controller do
  let(:phoenix) { User.create!(username: 'phoenix', password: 'password') }

  describe "GET #new" do
    context "when logged in" do
      it "renders the new goals page" do
        get :new, {}
        expect(response).to render_template("new")
      end
    end
  end

  describe "POST #create" do
    let(:phoenix) { User.create!(username: 'phoenix', password: 'password') }
    
    context "with invalid params" do
      it "validates presence of title" do
        post :create, params: { goal: { title: "This is the title"} }
        expect(response).to render_template("new")
        expect(flash[:errors]).to be_present
      end
    end

    context "with valid params" do
      it "redirects user to index on success" do
        post :create, params: { goal: { title: "Callie Title", description: "I like cats", completed: true, privacy: false} }
        expect(response).to render_template("new")
        expect(flash[:errors]).to be_present
      end
    end
  end
end