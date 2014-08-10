class AddClientIdToEntryitems < ActiveRecord::Migration
  def change
    add_column :entryitems, :client_id, :integer
    add_index :entryitems, :client_id
  end
end
