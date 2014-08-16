class Client < ActiveRecord::Base
	has_many :deals
	has_many :entryitems
	has_many :tasks
end
