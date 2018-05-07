json.extract! pet, :id, :adopted, :foster, :name, :species, :breed, :sex, :age, :state, :suburb, :desexed, :vaccinated, :about_pet, :health_concerns, :profile_id, :adoption_fee, :created_at, :updated_at
json.url pet_url(pet, format: :json)
