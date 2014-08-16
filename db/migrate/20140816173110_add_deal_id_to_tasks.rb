class AddDealIdToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :deal_id, :integer
    add_index :tasks, :deal_id
  end
end
