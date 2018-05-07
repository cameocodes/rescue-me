class ChangeProfileIdToUserId < ActiveRecord::Migration[5.1]
  def change
    rename_column :photos, :profile_id, :user_id
  end
end
