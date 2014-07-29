# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contact do
    name "Jon Test"
    email "jt@example.com"
    phone_number "123-555-1234"
    marketing_src "referral"
    subject "consulting"
    message "I need help!"
  end
end
