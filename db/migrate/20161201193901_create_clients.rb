class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :clientname
      t.integer :accountsize
      t.float :mgmt_fee
      t.string :risktolerance
      t.integer :user_id

      t.timestamps

    end
  end
end
