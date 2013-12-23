class Deal < ActiveRecord::Base
	belongs_to :user
	belongs_to :client #if i cut this line everything works fine
end
