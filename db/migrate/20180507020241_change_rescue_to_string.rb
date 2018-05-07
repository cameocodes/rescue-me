class ChangeRescueToString < ActiveRecord::Migration[5.1]
  def change
    change_column :profiles, :rescue, :string
  end
end
