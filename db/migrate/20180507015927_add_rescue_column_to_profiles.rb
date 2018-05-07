class AddRescueColumnToProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :rescue, :integer
  end
end
