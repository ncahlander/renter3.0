json.extract! profile, :id, :created_at, :updated_at, :role
json.url profile_url(profile, format: :json)
