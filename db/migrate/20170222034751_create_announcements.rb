class CreateAnnouncements < ActiveRecord::Migration[5.0]
  def change
    create_table :announcements do |t|
      t.string 	:title
      t.text 	:content
      t.string 	:Web_URL
      t.string 	:author
      t.string	:attachment
      t.timestamps
    end
  end
end
