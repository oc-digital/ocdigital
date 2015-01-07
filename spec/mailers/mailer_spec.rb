require "rails_helper"

RSpec.describe Mailer, :type => :mailer do

  describe '.notify_admin_of_prospect' do
    it 'renders the appropriate headers' do
      contact = create(:contact)
      mailer = Mailer.notify_admin_of_prospect(contact)
      expect(mailer.subject).to eq "New prospect for OC Digital"
      expect(mailer.to).to eq ["jeremy@ocdigital.co"]
      expect(mailer.from).to eq ["gratitude@ocdigital.co"]
    end
  end

end
