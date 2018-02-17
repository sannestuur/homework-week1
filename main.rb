require 'json'

def read_contacts
  contacts_json = File.read("contacts.json")
  return JSON.parse(contacts_json, { symbolize_names: true })
end



#This method maps the array with all contact information for all contacts (stored in contacts.json), to an array of hashes containing only the contact's name and the contact's phone number (Assignment 1)
def map_contacts(contacts)
  contacts_phone = contacts.map{|contact|
  {contact[:name] => contact[:phone]}
  }

  print contacts_phone
end

# This methods selects all contacts with phonenumbers containing the string "+1" (Assignment 2.1)
def select_by_phonenumber(contacts)
  phone_select = contacts.select {|contact| contact[:phone] =~ /\b#{"+1 "}/}

  print phone_select
end

# This methods selects all contacts with email addresses containing the string ".org" (Assignment 2.2)
def select_by_email(contacts)
  mail_select = contacts.select {|contact| contact[:email] =~ /\b#{".org"}/}

  print mail_select
end

contacts = read_contacts

#map_contacts(contacts)

#select_by_phonenumber(contacts)

# select_by_email(contacts)
