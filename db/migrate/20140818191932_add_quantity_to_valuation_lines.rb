class AddQuantityToValuationLines < ActiveRecord::Migration
  def change
    add_column :valuation_lines, :quantity, :integer
  end
end
