class Patron < ApplicationRecord
    validates :name, :email_address, presence: true
    validates :phone_number, length: { is: 10 }

    has_many :reservations
    has_many :restaurants, through: :reservations
end
