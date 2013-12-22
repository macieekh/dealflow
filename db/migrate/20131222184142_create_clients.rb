class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :nip
      t.string :email
      t.text :desc

      t.timestamps
    end
  end
end
