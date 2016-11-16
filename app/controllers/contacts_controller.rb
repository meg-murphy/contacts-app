class ContactsController < ApplicationController
  def contact_home
    @page_title = "Contact Home Page"
    @page_subtitle = "Contacts:"
    @contacts = Contact.all
  end

  def index
    @page_subtitle = "Contacts Index"
    @contacts = Contact.all
  end

  def new

  end

  def create
    @contacts = Contact.new(first_name: params[:first_name], last_name: params[:last_name], phone_number: params[:phone_number], email: params[:email])
    @contacts.save
  end

  def show
    @contact = Contact.find_by(id: params[:id])
  end

  def edit
    @contact = Contact.find_by(id: params[:id])
  end

  def update
    contact = Contact.find_by(id: params[:id])
    contact.assign_attributes(first_name: params[:first_name], last_name: params[:last_name], phone_number: params[:phone_number], email: params[:email])
    contact.save
  end

  def destroy
    contact = Contact.find_by(id: params[:id])
    contact.destroy
  end


end
