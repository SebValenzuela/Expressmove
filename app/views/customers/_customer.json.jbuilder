json.extract! customer, :id, :nombre, :rut, :email, :telefono, :direccion, :created_at, :updated_at
json.url customer_url(customer, format: :json)
