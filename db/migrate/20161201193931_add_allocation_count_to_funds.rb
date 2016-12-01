class AddAllocationCountToFunds < ActiveRecord::Migration[5.0]
  def change
    add_column :funds, :allocations_count, :integer
  end
end
