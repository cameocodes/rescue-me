class ChangePetsProfileIdToUserId < ActiveRecord::Migration[5.1]
  def change
    rename_column :pets, :profile_id, :user_id
  end
end
