class Deal < ActiveRecord::Base
	belongs_to :user
	belongs_to :client
	has_many :entryitems 

	def client_name_select
  		client.try(:name)
	end

	def client_name_select=(name)
	  self.client = Client.find_or_create_by_name(name) if name.present?
	end
end
