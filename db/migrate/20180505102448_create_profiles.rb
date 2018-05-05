class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :contact_number
      t.string :suburb
      t.string :state
      t.string :postcode
      t.boolean :rescue
      t.string :rescue_name
      t.string :rescue_email
      t.text :about_rescue
      t.text :adoption_details
      t.string :website_url
      t.text :logo_image
      t.boolean :looking_for_fosters
      t.boolean :taking_surrenders

      t.timestamps
    end
  end
end
