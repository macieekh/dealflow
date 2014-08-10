class Entryitem < ActiveRecord::Base
	belongs_to :client
	belongs_to :deal 
end
