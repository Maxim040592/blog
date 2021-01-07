class ContactsController < ApplicationController
def new #отображение сираницы т.е GET
  
end

def create #отправка страницы т.е POST
  @contact = Contact.new(contact_params)
  if @contact.valid? 
    @contact.save
  else
    render action: 'new'
  end
end

private
#разрешение на передачу параметров
def contact_params
  params.require(:contact).permit(:email, :message)
end

end
