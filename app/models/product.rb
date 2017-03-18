class Product < ApplicationRecord
<<<<<<< HEAD
	validates 
=======
	has_and_belongs_to_many :users
	has_many :transactions
	
	validates_presence_of :product_name
	validates_presence_of :product_code
	validates_presence_of :retailer_price
	validates_presence_of :original_price
	validates_presence_of :product_type
>>>>>>> a363eaf00bd25bf93e8ddbe52a76ec7b3a524b77
end
