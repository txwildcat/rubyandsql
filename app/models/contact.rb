class Contact < ApplicationRecord
    belongs_to :company   # DO THIS BECAUSE SINGULAR CONTACT BELONGS TO ONE COMPANY
    has_many :activities
end
