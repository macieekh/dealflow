class Part < ActiveRecord::Base
	has_many :valuation_lines
	has_many :valuations, :through => :valuation_lines
end
