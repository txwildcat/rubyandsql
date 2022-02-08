# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/1-models.rb

# **************************
# Don't change or move
Company.destroy_all #THIS IS LIKE A DESTROY TABLE IF EXISTS, ALLOWS YOU TO RERUN SEVERAL TIMES 
# **************************

# 1a. check out the schema file
# 1b. check out the model file

puts "There are #{Company.all.count} companies"

# 2. create new companies     # YOU WANT TO LOOK AT THE DATABASE SCHEMA WHEN CREATING ROWS IN THE TABLE -- IN THIS CASE ITS DB -> SCHEMA.RB
values = {  # THIS IS HOW YOU ENTER IN NEW ROWS INTO TABLES
    name: "Apple", 
    url: "https://apple.com", 
    city: "Cupertino", 
    state: "CA"
}

company = Company.new(values)  #THIS IS HOW YOU UPLOAD THE TABLE, OR CREATE A NEW INSTANCE OF THE CLASS .new(values) or the variable that you've given it "HOLDS IN MEMORY"
company.save  # THIS IS ACTUALLY WHAT HAPPENS TO GET IT TO SAVE AND UPLOAD TO THE TABLE "ACTUALLY INSERTING INTO THE TABLE"

puts "There are #{Company.all.count} companies"

values = {  # THIS IS HOW YOU ENTER IN NEW ROWS INTO TABLES
    name: "Amazon", 
    url: "https://Amazon.com", 
    city: "Seattle", 
    state: "WA"
}
company = Company.new(values)  #THIS IS HOW YOU UPLOAD THE TABLE, OR CREATE A NEW INSTANCE OF THE CLASS .new(values) or the variable that you've given it
company.save  # THIS IS ACTUALLY WHAT HAPPENS TO GET IT TO SAVE AND UPLOAD TO THE TABLE

puts "There are #{Company.all.count} companies"

# values = {  # THIS IS HOW YOU ENTER IN NEW ROWS INTO TABLES
#     name: "Amazon", 
#     url: "https://Amazon.com", 
#     city: "Seattle", 
#     state: "WA"
# }

# THESE ARE ALTERNATIVE WAYS TO CREATE A NEW RECORDS

company = Company.new  #THIS IS HOW YOU UPLOAD THE TABLE, OR CREATE A NEW INSTANCE OF THE CLASS .new(values) or the variable that you've given it
# company.write_attribute(:name, "Tesla")
company.name = "Tesla"
# company.write_attribute(:url, "https://telsa.com")
company.url = "https://tesla.com"
# company.write_attribute(:city, "Palo Alto")
company.city = "Palo Alto"
# company.write_attribute(:state, "CA")
company.state = "CA"
company.save  # THIS IS ACTUALLY WHAT HAPPENS TO GET IT TO SAVE AND UPLOAD TO THE TABLE

puts "There are #{Company.all.count} companies"

# 3. query companies table

# puts Company.all.inspect # .all THIS WILL SHOW WHERE THE DATA LIVES ---- .inspect WILL SHOW A LOT MORE

# companies = Company.where({ state: "CA", name: "Apple"}) # THIS IS HOW YOU CAN QUERY SPECIFIC VALUES IN YOUR TABLE
# puts companies.inspect

# puts Company.where({ state: "CA", name: "Apple"}).count # YOU CAN USE THIS TO FIGURE OUT HOW MANY OF SOMETHING THERE ARE, IN THIS CASE 1, THEREFORE [0]
apple = Company.where({ state: "CA", name: "Apple"})[0] # WE KNOW THAT THERE IS ONLY ONE APPLE IN CA, SO USE [0]
# puts apple.inspect # USE .inspect OR YOU WILL GET JUST THE LOCATION THAT THE DATA IS LIVING

# 4. read column values from row
# puts apple.read_attribute(:url) #this pulls out a variable
# puts "#{apple.read_attribute(:name)} has a website: #{apple.read_attribute(:url)}"
puts "#{apple.name} has a website #{apple.url}" # THIS IS A REALLY CLEAN WAY OF DOING THIS

# 5. update attribute value
# apple.write_attribute(:slogan, "Think Differently") # THIS KEYS WHAT'S ALREADY IN THERE FOR APPLE AND CAN ADD A VALUE
apple.slogan = "Think Differently" #THIS IS THE CLEAN WAY OF DOING THIS 
apple.save # THIS IS WHAT PUSHES IT TO THE DATABASE
puts apple.inspect

tesler = Company.new({ name: "Tesler"})
tesler.save

tesler.destroy # THIS IS HOW YOU DESTROY A BAD VALUE