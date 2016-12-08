class ChangeMonthToString < ActiveRecord::Migration[5.0]
  def change
    change_column :historicalperformances, :month, :string
  end
end
