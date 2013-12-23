class AddClientIdToDeals < ActiveRecord::Migration
  def change
    add_column :deals, :client_id, :integer
  end
end
