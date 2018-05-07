class RemoveRescueColumnFromProfiles < ActiveRecord::Migration[5.1]
  def change
    remove_column :profiles, :rescue
  end
end
