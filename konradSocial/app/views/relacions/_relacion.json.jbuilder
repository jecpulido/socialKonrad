json.extract! relacion, :id, :Usuario_id, :usuario2, :isVNombre, :isVApellido, :isVFechaNac, :isVTelefono, :isVCorreo, :created_at, :updated_at
json.url relacion_url(relacion, format: :json)
