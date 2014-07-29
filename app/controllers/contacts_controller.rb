class ContactsController < ApplicationController

  # GET /contact
  def new
    @contact = Contact.new
  end

  # POST /contact
  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        format.html { redirect_to @contact, notice: 'Contact was successfully created.' }
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /contact/thank-you
  def thankyou

  end

  private

end
