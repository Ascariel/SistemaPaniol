json.extract! user, :id, :rut, :nombre, :apellido, :telefono, :email, :password, :rol, :created_at, :updated_at
json.url user_url(user, format: :json)
