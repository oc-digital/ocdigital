require 'rails_helper'

RSpec.describe ContactsController, :type => :controller do
  let(:valid_attributes) { attributes_for(:contact) }
  let(:invalid_attributes) { attributes_for(:contact, email: nil) }

  describe "GET new" do
    it "assigns a new contact as @contact" do
      get :new
      expect(assigns(:contact)).to be_a_new(Contact)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Contact" do
        expect {
          post :create, {contact: valid_attributes}
        }.to change(Contact, :count).by(1)
      end

      it "assigns a newly created post as @post" do
        post :create, {contact: valid_attributes}
        expect(assigns(:contact)).to be_a(Contact)
        expect(assigns(:contact)).to be_persisted
      end

      it "redirects to the created post" do
        post :create, {contact: valid_attributes}
        expect(response).to redirect_to(thankyou_contact_url)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved post as @post" do
        post :create, {contact: invalid_attributes }
        expect(assigns(:contact)).to be_a_new(Contact)
      end

      it "re-renders the 'new' template" do
        post :create, {contact: invalid_attributes }
        expect(response).to render_template("new")
      end
    end
  end

  describe "GET thankyou" do
    it "returns http success" do
      get :thankyou
      expect(response).to have_http_status(:success)
    end
  end

end
