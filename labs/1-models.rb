# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/1-models.rb

# **************************
# Don't change or move
Contact.destroy_all
# **************************

# 1a. check out the schema file
# 1b. check out the model file
apple = Company.where({ name: "Apple"})[0]
puts apple.id #THIS IS WHAT WILL TELL YOU WHAT THE ID FOR APPLE IS
amazon = Company.where({ name: "Amazon"})[0]
telsa = Company.where({ name: "Tesla"})[0]


# 2. create 1-2 new contacts for each company (they can be made up)


# ---------------------------------
# Contacts: 4
# Andy Jassy - andy@amazon.com
# Craig Federighi - craig@apple.com
# Elon Musk - elon@tesla.com
# Tim Cook - tim@apple.com

contact = Contact.new

contact.first_name = "Tim"
contact.last_name = "Cook"
contact.email = "tim@apple.com"
contact.company_id = apple.id # YOU CAN USE THE APPLE.ID TO WORK DYNAMICALLY YAY

contact.save

contact = Contact.new

contact.first_name = "Elon"
contact.last_name = "Musk"
contact.email = "elon@tesla.com"
contact.company_id = telsa.id # YOU CAN USE THE .ID TO WORK DYNAMICALLY YAY

contact.save

contact = Contact.new

contact.first_name = "Craig"
contact.last_name = "Federighi"
contact.email = "craig@apple.com"
contact.company_id = apple.id # YOU CAN USE THE .ID TO WORK DYNAMICALLY YAY

contact.save

contact = Contact.new

contact.first_name = "Andy"
contact.last_name = "Jassy"
contact.email = "andy@amazon.com"
contact.company_id = amazon.id # YOU CAN USE THE .ID TO WORK DYNAMICALLY YAY

contact.save

puts Contact.all.count


# 3. write code to display how many contacts are in the database AND each contact's info (name, email), e.g.:

# puts Contact.all.inspect #THIS SHOWS THAT THEY ARE ARRAYS

# ---------------------------------
# Contacts: 4
puts "Contacts #{Contact.all.count}"

# Andy Jassy - andy@amazon.com
# Craig Federighi - craig@apple.com
# Elon Musk - elon@tesla.com
# Tim Cook - tim@apple.com

contacts = Contact.all

# BELOW IS THE LOOP CONSTRUCT TO GET THE DATA TO PRINT LIKE YOU'D WANT
for contact in contacts
    puts "#{contact.first_name} #{contact.last_name} - #{contact.email}"
end