json.extract! profile, :id, :user_id, :first_name, :last_name, :contact_number, :suburb, :state, :postcode, :rescue, :rescue_name, :rescue_email, :about_rescue, :adoption_details, :website_url, :logo_image, :looking_for_fosters, :taking_surrenders, :created_at, :updated_at
json.url profile_url(profile, format: :json)
