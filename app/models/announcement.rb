class Announcement < ApplicationRecord

	validates :title, presence: true
	validates :title, format: {with: /\A[a-zA-Z0-9]+\z/}
#	validates :title, format: {with: "/[a-zA-Z0-9]/" }

    validates :content, format: {with: /\A[a-zA-Z0-9]+\z/}
 #   validates :Web_URL, format: {with: //}
    validates :author, format: {with: /\A[A-Za-z]+\z/}
    validates :attachment, format: {with: /\A[A-Za-z.].(jpg|png|jpeg)+\z/}
#      t.string  :attachment
end
