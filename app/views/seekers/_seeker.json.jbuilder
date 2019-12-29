json.extract! seeker, :id, :first_name, :last_name, :seeker_signal, :address, :city, :zip, :email, :phone, :created_at, :updated_at
json.url seeker_url(seeker, format: :json)
