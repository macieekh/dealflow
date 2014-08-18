class Valuation < ActiveRecord::Base
	has_many :valuation_lines
	has_many :parts, :through => :valuation_lines
	accepts_nested_attributes_for :parts
end
