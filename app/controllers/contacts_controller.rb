class ContactsController < ApplicationController

  # GET /contact
  def new
    @contact = Contact.new
  end

  # POST /contact
  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      Mailer.notify_admin_of_prospect(@contact).deliver_later
      redirect_to thankyou_contact_url
    else
      render :new
    end
  end

  # GET /contact/thank-you
  def thankyou

  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def contact_params
    params.require(:contact).permit(:name, :email, :phone_number, :marketing_src, :subject, :message)
  end
end
