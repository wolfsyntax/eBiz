class Announcement < ApplicationRecord

	validates :title, presence: true
	validates :title, format: {with: /[a-zA-Z0-9]/}
#	validates :title, format: {with: "/[a-zA-Z0-9]/" }

    validates :content, format: {with: /[a-zA-Z0-9]/}
    validates :Web_URL, format: {with: /(http|https):\/\/www.([a-zA-Z0-9]|[a-zA-Z0-9]|[0-9]{3}.[0-9]{3}.[0-9]{3})/}
    validates :author, format: {with: /[A-Za-z]/}
    validates :attachment, format: {with: /[A-Za-z.]/}
#      t.string  :attachment
end
