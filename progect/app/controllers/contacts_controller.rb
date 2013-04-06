class ContactsController < ApplicationController
  def new
    @contact=Contact.new
  end
  def index
    @contacts=Contact.all
  end
  def create
    @contact=Contact.new(params[:contact])
    if @contact.save
      redirect_to '/contacts'
    else
      render :new
    end
  end
  def destroy
    @contact=Contact.find(params[:id])
    @contact.destroy
    redirect_to contacts_path
  end
  def edit
    @contact=Contact.find(params[:id])
  end
  def update
    @change=Contact.find(params[:id])
    @change.update_attributes(params[:contact])
    redirect_to '/contacts'
  end
end