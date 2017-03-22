class Carousel < ApplicationRecord
    
#	validate :verify_data
	validates :image_name, presence: true
	validates :image_name, format: {with: /\A[a-zA-Z0-9]+\z.(jpg|png|jpeg)/,message: "Invalid data file name"}

=begin
	def verify_data

		errors.add(:image_name,:message => "Image name can't be empty")
		if :image_name == nil then
			errors.add(:image_name,:message => "Image name can't be empty")
		elsif :image_name != /[A-Za-z].(jpg|png|jpeg)/ then
			errors.add(:image_name,:message => "Invalid format. I only accept jpg, jpeg and png format")
		end

#		if :link == nil then
#			errors.add(:link, :message => "Location of the image can't be null")
#		elsif :link != /[.:\/A-Za-z0-9]/ then
#			errors.add(:link, :message => "Invalid location")
#		end
	end
=end



#    t.string :image_name
#	t.string :link

end
