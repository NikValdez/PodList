class DropShares < ActiveRecord::Migration[5.1]
  def change
    drop_table :shares
  end
end
