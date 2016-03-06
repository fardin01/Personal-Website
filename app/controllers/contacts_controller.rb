class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    
    if @contact.deliver
      flash.now[:alert] = nil
      flash[:contact] = "Thank you for your message! I'll get back to you shortly."
      redirect_to contact_path
    else
      flash.now[:alert] = 'Cannot send message.'
      render :new
    end
  end
end
