require 'rails_helper'

RSpec.describe Contact, :type => :model do

  it { should respond_to(:email) }
  it { should respond_to(:marketing_src) }
  it { should respond_to(:message) }
  it { should respond_to(:name) }
  it { should respond_to(:phone_number) }
  it { should respond_to(:subject) }

  describe "Validations" do
    it { should validate_presence_of(:email)}
    it { should validate_presence_of(:message)}
    it { should validate_presence_of(:name)}
    it { should validate_presence_of(:subject)}

    context "subject" do
      it "rejects injected data" do
        contact = build(:contact, subject: 'not valid')
        expect(contact).to_not be_valid
        expect(contact.errors[:subject]).to_not be nil
      end
    end

    context "marketing_src" do
      it "rejects injected data" do
        contact = build(:contact, marketing_src: 'not valid')
        expect(contact).to_not be_valid
        expect(contact.errors[:marketing_src]).to_not be nil
      end
    end

  end

end
