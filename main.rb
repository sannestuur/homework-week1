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

# This method gives the amount of contacts that have a phonenumber containing the string "+1" (Assignment 3.1)
def amount_of_selected_phonenumbers(contacts)
  phone_select = contacts.select {|contact| contact[:phone] =~ /\b#{"+1 "}/}

  phone_select.reduce(0) do |sum, contact|
    sum += 1
  end
end

# This method gives the amount of contacts with email addresses containing the string ".org" (Assignment 3.2)
def amount_of_selected_email(contacts)
  mail_select = contacts.select {|contact| contact[:email] =~ /\b#{".org"}/}

  mail_select.reduce(0) do |sum, contact|
    sum += 1
  end
end

contacts = read_contacts

print amount_of_selected_phonenumbers(contacts)
puts

print amount_of_selected_email(contacts)
puts

#map_contacts(contacts)

#select_by_phonenumber(contacts)

# select_by_email(contacts)
