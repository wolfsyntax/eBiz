class Transaction < ApplicationRecord
	validates_presence_of :product_code
	validates_presence_of :phone_number
	validates_presence_of :quantity
	
end
