json.extract! product, :id, :local_id, :nombre, :categoria, :marca, :created_at, :updated_at
json.url product_url(product, format: :json)
