class CreateHistoricalperformances < ActiveRecord::Migration
  def change
    create_table :historicalperformances do |t|
      t.integer :fund_id
      t.integer :month
      t.float :performance

      t.timestamps

    end
  end
end
