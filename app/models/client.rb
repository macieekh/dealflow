class Client < ActiveRecord::Base
	has_many :deals
	has_many :entryitems
end
