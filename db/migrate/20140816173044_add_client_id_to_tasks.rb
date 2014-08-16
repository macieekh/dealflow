class AddClientIdToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :client_id, :integer
    add_index :tasks, :client_id
  end
end
