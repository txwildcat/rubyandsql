class Company < ApplicationRecord
    has_many :contacts  # WE DO THIS BECAUSE A COMPANY HAS MANY CONTACTS   # CHECK OUT CONTACT.RB IF YOU WANT TO KNOW HOW TO DO IT WITH A 1 TO 1 RELATIONSHIP

    # OLD WAY OF DOING THIS
    # def contacts
    #     # puts "Hello"
    #     Contact.where({ company_id: read_attribute(:id)})   # YOU CAN SHORT HAND AFTER THE company_id: "read_attribute(:id)" -- THIS ACTS LIKE A HELPER
    # end


end
