json.extract! product, :id, :local_id, :name, :category, :mark, :created_at, :updated_at
json.url product_url(product, format: :json)
