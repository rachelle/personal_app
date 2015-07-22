class ContactsController < ApplicationController
  
  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
      if @contact.save
        redirect_ root_path
      else 
        render 'new'
  end
end  

  def show
    @contact = Contact.find(params[:id])
  end

  def edit
    @conatct = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update_attributes(contact_params)
        redirect_to contacts_path
    else  
        render 'edit'
    end 
end

  def delete
      @contact= Contact.find(params[:id]).destroy
      redirect_to root_path
  end
end

