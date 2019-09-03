json.extract! customer, :id, :name, :rut, :email, :telephone, :address, :created_at, :updated_at
json.url customer_url(customer, format: :json)
