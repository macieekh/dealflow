class ValuationLine < ActiveRecord::Base
	belongs_to :part
	belongs_to :valuation

	def part_name
		part.try(:name)
	end

	def part_name=(name)
	    self.part = Part.find_by_name(name) if name.present?
	end
end
