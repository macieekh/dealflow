class ChangeColumnName < ActiveRecord::Migration
def change
	rename_column :valuation_lines, :pruchase_price, :purchase_price
end
end
