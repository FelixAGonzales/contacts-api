class ContactsController < ApplicationController
  def contact_details
    contact_all = Contact.all
    contact1 = contact_all[0]
    contact2 = contact_all[1]
    contact3 = contact_all[2]
    # contact = Contact.find_by(first_name: "Alex")
    render json: {
      id1: contact1.id,
      first_name1: contact1.first_name,
      last_name1: contact1.last_name,
      email1: contact1.email,
      phone_number1: contact1.phone_number,

      id2: contact2.id,
      first_name2: contact2.first_name,
      last_name2: contact2.last_name,
      email2: contact2.email,
      phone_number2: contact2.phone_number,

      id3: contact3.id,
      first_name3: contact3.first_name,
      last_name3: contact3.last_name,
      email3: contact3.email,
      phone_number3: contact3.phone_number,
    }
  end
end
