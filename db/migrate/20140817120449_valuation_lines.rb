class ValuationLines < ActiveRecord::Migration
  def change
    create_table :valuation_lines do |t|
      t.integer :valuation_id
      t.integer :part_id
      t.integer :pruchase_price
    end
  end
end
