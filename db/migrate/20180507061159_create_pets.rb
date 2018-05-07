class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.boolean :adopted
      t.boolean :foster
      t.string :name
      t.string :species
      t.string :breed
      t.string :sex
      t.string :age
      t.string :state
      t.string :suburb
      t.boolean :desexed
      t.boolean :vaccinated
      t.text :about_pet
      t.text :health_concerns
      t.references :profile, foreign_key: true
      t.string :adoption_fee

      t.timestamps
    end
  end
end
