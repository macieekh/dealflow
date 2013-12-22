class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :client
      t.string :headline
      t.integer :value
      t.text :description

      t.timestamps
    end
  end
end
