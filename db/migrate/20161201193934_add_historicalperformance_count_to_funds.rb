class AddHistoricalperformanceCountToFunds < ActiveRecord::Migration[5.0]
  def change
    add_column :funds, :historicalperformances_count, :integer
  end
end
