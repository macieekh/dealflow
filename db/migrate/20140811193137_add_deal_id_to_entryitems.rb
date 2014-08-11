class AddDealIdToEntryitems < ActiveRecord::Migration
  def change
    add_column :entryitems, :deal_id, :integer
    add_index :entryitems, :deal_id
  end
end
