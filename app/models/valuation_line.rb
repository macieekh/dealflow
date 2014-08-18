class ValuationLine < ActiveRecord::Base
	belongs_to :part
	belongs_to :valuation
end
