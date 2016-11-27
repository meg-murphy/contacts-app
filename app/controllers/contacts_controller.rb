class ContactsController < ApplicationController
  before_action :authenticate_user!, except: [:index]


  def contact_home
    @page_title = "Contact Home Page"
    @page_subtitle = "Contacts:"
    @contacts = Contact.all
  end

  def index
    @page_subtitle = "Contacts Index"
    @contacts = Contact.all.where(user_id: current_user)
  end

  def johns
    @contacts = Contact.all
  end

  def new

  end

  def create
    @contact = Contact.new(first_name: params[:first_name], last_name: params[:last_name],
     phone_number: params[:phone_number], email: params[:email], user_id: current_user.id)

     if @contact.save
       flash[:success] = "Contact saved."
       redirect_to "/contacts"
     else
       flash[:warning] = "Error - contact not saved."
       redirect_to "/contacts/new"
     end

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
