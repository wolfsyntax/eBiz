class Transaction < ApplicationRecord
	has_and_belongs_to_many :users
	has_many :products
	
	validates_presence_of :product_code
	validates_presence_of :phone_number
	validates_presence_of :quantity
	
end