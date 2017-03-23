json.extract! user_datum, :id, :age, :address, :email_address, :contact_number, :user_id, :created_at, :updated_at
json.url user_datum_url(user_datum, format: :json)