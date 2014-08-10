class CreateEntryitems < ActiveRecord::Migration
  def change
    create_table :entryitems do |t|
      t.text :description

      t.timestamps
    end
  end
end
