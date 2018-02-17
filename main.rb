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



contacts = read_contacts

map_contacts(contacts)
