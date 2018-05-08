class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.string :sender_id
      t.string :reciever_id
      t.string :amount
      t.string :description

      t.timestamps
    end
  end
end
