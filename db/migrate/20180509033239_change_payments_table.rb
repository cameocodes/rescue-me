class ChangePaymentsTable < ActiveRecord::Migration[5.1]
  def change
    add_column :payments, :user_id, :text
    remove_column :payments, :sender_id
    remove_column :payments, :reciever_id
  end
end
