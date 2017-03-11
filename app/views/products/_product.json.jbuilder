json.extract! product, :id, :product_name, :product_code, :retailer_price, :original_price, :created_at, :updated_at
json.url product_url(product, format: :json)