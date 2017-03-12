class Product < ApplicationRecord
	validates_presence_of :product_name
	validates_presence_of :product_code
	validates_presence_of :retailer_price
	validates_presence_of :original_price
	validates_presence_of :product_type
end
