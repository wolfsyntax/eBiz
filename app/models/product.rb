class Product < ApplicationRecord

	has_and_belongs_to_many :users
	has_many :transactions
	
	validates_presence_of :product_name
	validates :product_name, format: {with: /\A[a-zA-Z]+\z/}
	
	validates_presence_of :product_code
	validates :product_code, format: {with: /\A[a-zA-Z]+\z/}
	
	validates_presence_of :retailer_price
	validates :retailer_price, numericality: true
	
	validates_presence_of :original_price
	validates :original_price, numericality: true

	validates_presence_of :product_type
	validates :product_type, format: {with: /\A[a-zA-Z]+\z/}

end
