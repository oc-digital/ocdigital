require 'rails_helper'

RSpec.describe Contact, type: :feature  do

  context "With valid params" do
    it "displays the thank-you page" do
      prospect_email  = Faker::Internet.email
      visit new_contact_path
      fill_in "Full name", with: "#{Faker::Name.first_name}"
      fill_in "Email", with: prospect_email
      select 'Consulting', from: 'contact_subject'
      fill_in "contact_message", with: "I need help!"
      click_on 'submit_contact_us_form'
      expect(page).to have_content("Thank You!")
      expect(current_path).to eq("/contact/thank-you")
      expect(last_email.to).to include('jeremy@ocdigital.co')
    end
  end

  context "With invalid params" do
    it "displays an error message" do
      visit new_contact_path
      click_on 'submit_contact_us_form'
      expect(page).to have_content("Oh Snap!")
    end
  end

end