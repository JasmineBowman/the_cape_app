json.extract! hero, :id, :first_name, :last_name, :hero_handle, :address, :city, :zip, :email, :phone, :created_at, :updated_at
json.url hero_url(hero, format: :json)
