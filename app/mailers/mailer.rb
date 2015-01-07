class Mailer < ActionMailer::Base
  default from: "gratitude@ocdigital.co"
  layout 'mailer'

  def notify_admin_of_prospect(contact)
    @prospect = contact
    mail to: "jeremy@ocdigital.co", subject: "New prospect for OC Digital"
  end
end