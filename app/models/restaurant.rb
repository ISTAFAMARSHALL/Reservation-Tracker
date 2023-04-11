class Restaurant < ApplicationRecord
    validates :name, :address, :website_url, presence: true
    validates :phone_number, length: { is: 10 }
    
    has_many :reservations
    has_many :patrons, through: :reservations
end
