class ContactsController < ApplicationController
  def contact_details
    @contact = Contact.find_by(name: "Alex")
    render template: "Contacts/show"
  end

  def all
    @contacts = Contact.all
    render template: "Contacts/index"
  end
end
